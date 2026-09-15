import json
import unittest

import numpy as np
from astropy.io import fits
from header_formatter.header import (
    EICS,
    GUI,
    S4ICS,
    TCS,
    Focuser,
    General_ECHARPE_KWs,
    General_SPARC4_KWs,
    Weather_Station,
    iKon_L,
    iXon_Ultra,
)
from header_formatter.post_processor import Post_Processor
from header_formatter.setup import Header_Class_Setup
from header_formatter.utils import (
    WS_json,
    egui_json,
    focuser_json,
    general_kw,
    ics_kw,
    ikon_kw,
    ixon_kw,
    s4gui_json,
    tcs_json,
)


class Test_Everything(unittest.TestCase):
    def test_fill_sparc4_header(self) -> None:

        self._hdr_data = dict.fromkeys(
            ["CCD", "GUI", "ICS", "FOCUSER", "WSTATION", "GENERAL KW", "TCS"], "{}"
        )
        self._hdr_data["CCD"] = json.dumps(ixon_kw)
        self._hdr_data["GUI"] = json.dumps(s4gui_json)
        self._hdr_data["WSTATION"] = json.dumps(WS_json)
        self._hdr_data["FOCUSER"] = json.dumps(focuser_json)
        self._hdr_data["ICS"] = json.dumps(ics_kw)
        self._hdr_data["TCS"] = json.dumps(tcs_json)
        self._hdr_data["GENERAL KW"] = json.dumps(general_kw)

        setup = Header_Class_Setup("sparc4")
        self.hdr, hdr_data, hdr_cnt, log_file, file_name = setup.create_setup(
            json.dumps(self._hdr_data), "00000000_s4c1_000001.fits"
        )

        for obj in [
            Focuser,
            S4ICS,
            GUI,
            TCS,
            Weather_Station,
            General_SPARC4_KWs,
            iXon_Ultra,
        ]:
            kws_specs = setup.create_hdr_specs(obj.name)
            obj = obj(kws_specs, hdr_cnt, log_file, file_name)
            obj.write_header_all_apps(hdr_data)
            obj.get_app_header_data()
            obj.fix_original_string()
            obj.load_json()
            obj.fix_original_hdr_data()
            obj.extract_data()
            obj.fix_keywords()
            obj.fix_remainder_keywords()
            obj.check_kws_types()
            obj.check_allowed_values()
            self.hdr = obj.fill_image_header(self.hdr)

        hdu = fits.PrimaryHDU(np.zeros((1, 1), dtype=np.uint16), self.hdr)  # type: ignore
        hdu = Post_Processor._fix_standard_keywords(hdu)
        self.hdr = hdu.header

        if "" in self.hdr.values():
            print(repr(self.hdr))
            assert False

    def test_fill_echarpe_header(self) -> None:

        self._hdr_data = dict.fromkeys(
            ["CCD", "GUI", "ICS", "FOCUSER", "WSTATION", "GENERAL KW", "TCS"], "{}"
        )
        self._hdr_data["CCD"] = json.dumps(ikon_kw)
        self._hdr_data["GUI"] = json.dumps(egui_json)
        self._hdr_data["WSTATION"] = json.dumps(WS_json)
        self._hdr_data["FOCUSER"] = json.dumps(focuser_json)
        self._hdr_data["ICS"] = json.dumps(ics_kw)
        self._hdr_data["TCS"] = json.dumps(tcs_json)
        self._hdr_data["GENERAL KW"] = json.dumps(general_kw)

        setup = Header_Class_Setup("echarpe")
        self.hdr, hdr_data, hdr_cnt, log_file, file_name = setup.create_setup(
            json.dumps(self._hdr_data), "YYYYMMDD_s4c1_000000.fits"
        )

        for obj in [
            Focuser,
            EICS,
            GUI,
            TCS,
            Weather_Station,
            General_ECHARPE_KWs,
            iKon_L,
        ]:
            kws_specs = setup.create_hdr_specs(obj.name)
            obj = obj(kws_specs, hdr_cnt, log_file, file_name)
            obj.write_header_all_apps(hdr_data)
            obj.get_app_header_data()
            obj.fix_original_string()
            obj.load_json()
            obj.fix_original_hdr_data()
            obj.extract_data()
            obj.fix_keywords()
            obj.fix_remainder_keywords()
            obj.check_kws_types()
            obj.check_allowed_values()
            self.hdr = obj.fill_image_header(self.hdr)

        hdu = fits.PrimaryHDU(np.zeros((1, 1), dtype=np.uint16), self.hdr)  # type: ignore
        hdu = Post_Processor._fix_standard_keywords(hdu)
        self.hdr = hdu.header

        if "" in self.hdr.values():
            print(repr(self.hdr))
            assert False
