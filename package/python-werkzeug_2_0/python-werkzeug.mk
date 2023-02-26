################################################################################
#
# python-werkzeug
#
################################################################################

PYTHON_WERKZEUG_2_0_VERSION = 2.0.0
PYTHON_WERKZEUG_2_0_SOURCE = Werkzeug-$(PYTHON_WERKZEUG_2_0_VERSION).tar.gz
PYTHON_WERKZEUG_2_0_SITE = https://files.pythonhosted.org/packages/4d/0c/7b8934a4073c282e159f9133e55d3fa31b8b99a53c5a67d0a35e4c0ddb16
PYTHON_WERKZEUG_2_0_SETUP_TYPE = setuptools
PYTHON_WERKZEUG_2_0_LICENSE = BSD-3-Clause
PYTHON_WERKZEUG_2_0_LICENSE_FILES = LICENSE.rst
PYTHON_WERKZEUG_2_0_CPE_ID_VENDOR = palletsprojects
PYTHON_WERKZEUG_2_0_CPE_ID_PRODUCT = werkzeug

$(eval $(python-package))
