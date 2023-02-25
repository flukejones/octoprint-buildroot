################################################################################
#
# python-zeroconf
#
################################################################################

PYTHON_ZEROCONF_0_33_VERSION = 0.33.4
PYTHON_ZEROCONF_0_33_SOURCE = zeroconf-$(PYTHON_ZEROCONF_0_33_VERSION).tar.gz
PYTHON_ZEROCONF_0_33_SITE = https://files.pythonhosted.org/packages/8e/52/8cb1d5fdd6ff773c7e8a7c7038a1dc1a698688821472b0e7c82c9bf93b27
PYTHON_ZEROCONF_0_33_SETUP_TYPE = setuptools
PYTHON_ZEROCONF_0_33_LICENSE = LGPL-2.1+
PYTHON_ZEROCONF_0_33_LICENSE_FILES = COPYING

$(eval $(python-package))
