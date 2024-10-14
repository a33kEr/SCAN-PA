#! /usr/bin/env python3
from setuptools import setup

import pathlib

# The directory containing this file
HERE = pathlib.Path(__file__).parent

# The text of the README file
README = (HERE / "README.md").read_text()

setup(
    name                =   "SCAN-PA",
    version             =   '1.0',
    description         =   "The Multi-Tool Web Vulnerability Scanner - SCAN-PA",
    long_description    =   README,
    long_description_content_type = "text/markdown",
    url                 =   "https://github.com/YOUR_GITHUB_USERNAME/SCAN-PA",  # Update this with your actual repository URL
    author              =   "Aditya Pathak",
    py_modules          =   ['SCAN-PA'],
    install_requires    =   [],
    python_requires     =   ">=3.6",
)

