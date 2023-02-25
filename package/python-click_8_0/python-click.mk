################################################################################
#
# python-click
#
################################################################################

PYTHON_CLICK_8_0_VERSION = 8.0.4
PYTHON_CLICK_8_0_SOURCE = click-$(PYTHON_CLICK_8_0_VERSION).tar.gz
PYTHON_CLICK_8_0_SITE = https://files.pythonhosted.org/packages/dd/cf/706c1ad49ab26abed0b77a2f867984c1341ed7387b8030a6aa914e2942a0
PYTHON_CLICK_8_0_LICENSE = BSD-3-Clause
PYTHON_CLICK_8_0_LICENSE_FILES = LICENSE.rst
PYTHON_CLICK_8_0_SETUP_TYPE = setuptools

$(eval $(python-package))
