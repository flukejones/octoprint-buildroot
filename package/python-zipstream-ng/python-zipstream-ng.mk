################################################################################
#
# python-zipstream-ng
#
################################################################################

PYTHON_ZIPSTREAM_NG_VERSION = 1.4.0
PYTHON_ZIPSTREAM_NG_SOURCE = zipstream-ng-$(PYTHON_ZIPSTREAM_NG_VERSION).tar.gz
PYTHON_ZIPSTREAM_NG_SITE = https://files.pythonhosted.org/packages/2b/7b/d01e209c808e5eed0310f19adb647c154f4702b70e7d1b1132277048decc
PYTHON_ZIPSTREAM_NG_SETUP_TYPE = setuptools
PYTHON_ZIPSTREAM_NG_LICENSE = GNU Lesser General Public License v3 (LGPLv3)
PYTHON_ZIPSTREAM_NG_LICENSE_FILES = LICENSE

$(eval $(python-package))
