################################################################################
#
# python-wrapt
#
################################################################################

PYTHON_WRAPT_1_13_VERSION = 1.13.3
PYTHON_WRAPT_1_13_SOURCE = wrapt-$(PYTHON_WRAPT_1_13_VERSION).tar.gz
PYTHON_WRAPT_1_13_SITE = https://files.pythonhosted.org/packages/eb/f6/d81ccf43ac2a3c80ddb6647653ac8b53ce2d65796029369923be06b815b8
PYTHON_WRAPT_1_13_SETUP_TYPE = distutils
PYTHON_WRAPT_1_13_LICENSE = BSD-2-Clause
PYTHON_WRAPT_1_13_LICENSE_FILES = LICENSE

$(eval $(python-package))
