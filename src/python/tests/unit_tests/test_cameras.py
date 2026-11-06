import json
import unittest

from header_formatter.header import CCD, iKon_L
from header_formatter.setup import Header_Class_Setup


class Test_Camera(unittest.TestCase):
    def setUp(self) -> None:
        self._dict_data = {
            "FILENAME": "00000000_ech1_000001_b.fits",
            "READRATE": 1,
            "PREAMP": "Gain 1",
            "FRAMEIND": 0,
            "EXPTIME": 9.9999999e-6,
            "VBIN": 1,
            "INITLIN": 1,
            "INITCOL": 1,
            "FINALLIN": 2048,
            "FINALCOL": 2048,
            "HBIN": 1,
            "CCDSERN": 31564,
            "TRIGGER": "Internal",
            "ACQMODE": "Kinetic",
            "SHUTTER": "Open",
            "VCLKAMP": "Normal",
            "NFRAMES": 1,
            "DATE-OBS": "0000-00-00T00:00:00.000000",
            "UTDATE": "0000-00-00",
            "UTTIME": "00:00:00.000000",
            "CCDTEMP": -30,
            "TEMPST": "TEMPERATURE_STABILIZED",
            "TGTEMP": -30,
            "COOLER": True,
            "VSHIFT": 38.55,
            "HIGHCAP": True,
        }

        self._hdr_data = dict.fromkeys(
            ["CCD", "GUI", "ICS", "FOCUSER", "WSTATION", "GENERAL KW", "TCS"], "{}"
        )
        self._hdr_data["CCD"] = json.dumps(self._dict_data)
        setup = Header_Class_Setup("echarpe")
        self.hdr, hdr_data, hdr_cnt, log_file, file_name = setup.create_setup(
            json.dumps(self._hdr_data), "00000000_ech1_000001_b.fits"
        )
        kws_specs = setup.create_hdr_specs(CCD.name)
        self.tester = CCD(kws_specs, hdr_cnt, log_file, file_name)
        self.tester.write_header_all_apps(hdr_data)
        self.tester.get_app_header_data()
        self.tester.fix_original_string()
        self.tester.load_json()
        self.tester.fix_original_hdr_data()
        self.tester.extract_data()
        self.tester.fix_keywords()
        self.tester.fix_remainder_keywords()

    def test_idx_tab(self) -> None:
        assert self.tester.idx_tab == 3

    def test_write_read_noise(self) -> None:
        assert self.tester.fixed_data["RDNOISE"] == 10.02

    def test_write_gain(self) -> None:
        assert self.tester.fixed_data["GAIN"] == 6.59

    def test_fix_exp_time(self) -> None:
        assert self.tester.fixed_data["EXPTIME"] == 1e-5

    def test_calc_NAXIS1(self) -> None:
        assert self.tester.fixed_data["NAXIS1"] == 2048

    def test_calc_NAXIS2(self) -> None:
        assert self.tester.fixed_data["NAXIS2"] == 2048

    def test_fix_keywords(self) -> None:
        assert self.tester.fixed_data["SHUTTER"] == "Open"
        assert self.tester.fixed_data["VCLKAMP"] == "Normal"
        assert self.tester.fixed_data["NFRAMES"] == 1
        assert self.tester.fixed_data["DATE-OBS"] == "0000-00-00T00:00:00.000000"
        assert self.tester.fixed_data["UTDATE"] == "0000-00-00"
        assert self.tester.fixed_data["UTTIME"] == "00:00:00.000000"
        assert self.tester.fixed_data["CCDTEMP"] == -30
        assert self.tester.fixed_data["TEMPST"] == "TEMPERATURE_STABILIZED"
        assert self.tester.fixed_data["TGTEMP"] == -30
        assert self.tester.fixed_data["READRATE"] == 1
        assert self.tester.fixed_data["COOLER"] is True

    def test_fix_remainder_keywords(self) -> None:
        assert self.tester.fixed_data["NAXIS1"] == 2048
        assert self.tester.fixed_data["NAXIS2"] == 2048
        assert self.tester.fixed_data["GAIN"] == 6.59
        assert self.tester.fixed_data["RDNOISE"] == 10.02


class Test_iKon_L(unittest.TestCase):
    def setUp(self) -> None:
        self._dict_data = {
            "FILENAME": "00000000_s4c1_000000.fits",
            "READRATE": 1,
            "PREAMP": "Gain 1",
            "FRAMEIND": 0,
            "EXPTIME": 9.9999999e-6,
            "VBIN": 1,
            "INITLIN": 1,
            "INITCOL": 1,
            "FINALLIN": 2048,
            "FINALCOL": 2048,
            "HBIN": 1,
            "CCDSERN": 31564,
            "TRIGGER": "Internal",
            "ACQMODE": "Kinetic",
            "SHUTTER": "Open",
            "VCLKAMP": "Normal",
            "NFRAMES": 1,
            "DATE-OBS": "0000-00-00T00:00:00.000000",
            "UTDATE": "0000-00-00",
            "UTTIME": "00:00:00.000000",
            "CCDTEMP": -30,
            "TEMPST": "TEMPERATURE_STABILIZED",
            "TGTEMP": -30,
            "COOLER": True,
            "VSHIFT": 38.55,
            "HIGHCAP": True,
        }

        self._hdr_data = dict.fromkeys(
            ["CCD", "GUI", "ICS", "FOCUSER", "WSTATION", "GENERAL KW", "TCS"], "{}"
        )
        self._hdr_data["CCD"] = json.dumps(self._dict_data)
        setup = Header_Class_Setup("echarpe")
        self.hdr, hdr_data, hdr_cnt, log_file, file_name = setup.create_setup(
            json.dumps(self._hdr_data), "00000000_ech1_000001.fits"
        )

        kws_specs = setup.create_hdr_specs(iKon_L.name)

        self.tester = iKon_L(kws_specs, hdr_cnt, log_file, file_name)
        self.tester.write_header_all_apps(hdr_data)
        self.tester.get_app_header_data()
        self.tester.fix_original_string()
        self.tester.load_json()
        self.tester.fix_original_hdr_data()
        self.tester.extract_data()
        self.tester.fix_keywords()
        self.tester.fix_remainder_keywords()

    def test_find_idx_tab(self) -> None:
        assert self.tester.idx_tab == 7

    def test_write_readrate(self) -> None:
        assert self.tester.fixed_data["READRATE"] == 1

    def test_fill_image_header(self) -> None:
        self.tester.check_kws_types()
        self.tester.check_allowed_values()
        hdr = self.tester.fill_image_header(self.hdr)
        assert hdr["SHUTTER"] == "Open"
        assert hdr["VCLKAMP"] == "Normal"
        assert hdr["NFRAMES"] == 1
        assert hdr["DATE-OBS"] == "0000-00-00T00:00:00.000000"
        assert hdr["UTDATE"] == "0000-00-00"
        assert hdr["UTTIME"] == "00:00:00.000000"
        assert hdr["CCDTEMP"] == -30
        assert hdr["TEMPST"] == "TEMPERATURE_STABILIZED"
        assert hdr["TGTEMP"] == -30
        assert hdr["COOLER"] is True
        assert hdr["NAXIS1"] == 2048
        assert hdr["NAXIS2"] == 2048
        assert hdr["READRATE"] == 1.0
        # TODO: confirmar valores abaixo
        # assert hdr["GAIN"] == 0.8
        # assert hdr["RDNOISE"] == 3.47
        assert hdr["VSHIFT"] == 38.55
