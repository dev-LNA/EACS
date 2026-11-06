import json
from pathlib import Path

from header_formatter.header_content import Header_Content
from header_formatter.keywords_specs import Keywords_Specifications

from .header import Header


class ICS(Header):
    name = "ICS"


class EICS(ICS):
    pass
