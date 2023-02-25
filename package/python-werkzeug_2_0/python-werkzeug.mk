################################################################################
#
# python-werkzeug
#
################################################################################

PYTHON_WERKZEUG_2_0_VERSION = 2.0.3
PYTHON_WERKZEUG_2_0_SOURCE = Werkzeug-$(PYTHON_WERKZEUG_2_0_VERSION).tar.gz
PYTHON_WERKZEUG_2_0_SITE = https://files.pythonhosted.org/packages/6c/a8/60514fade2318e277453c9588545d0c335ea3ea6440ce5cdabfca7f73117
PYTHON_WERKZEUG_2_0_SETUP_TYPE = setuptools
PYTHON_WERKZEUG_2_0_LICENSE = BSD-3-Clause
PYTHON_WERKZEUG_2_0_LICENSE_FILES = LICENSE.rst
PYTHON_WERKZEUG_2_0_CPE_ID_VENDOR = palletsprojects
PYTHON_WERKZEUG_2_0_CPE_ID_PRODUCT = werkzeug

$(eval $(python-package))
