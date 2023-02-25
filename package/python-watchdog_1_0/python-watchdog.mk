################################################################################
#
# python-watchdog
#
################################################################################

PYTHON_WATCHDOG_1_0_VERSION = 1.0.2
PYTHON_WATCHDOG_1_0_SOURCE = watchdog-$(PYTHON_WATCHDOG_1_0_VERSION).tar.gz
PYTHON_WATCHDOG_1_0_SITE = https://files.pythonhosted.org/packages/5f/39/e9e2aa6f22983b682dda2daccd3151c706d3da66d989c78c038d6b94b962
PYTHON_WATCHDOG_1_0_SETUP_TYPE = setuptools
PYTHON_WATCHDOG_1_0_LICENSE = Apache-2.0
PYTHON_WATCHDOG_1_0_LICENSE_FILES = LICENSE COPYING

$(eval $(python-package))
