################################################################################
#
# python-rich
#
################################################################################

PYTHON_ORDERED_SET_VERSION = 4.1.0
PYTHON_ORDERED_SET_SOURCE = ordered-set-$(PYTHON_ORDERED_SET_VERSION).tar.gz
PYTHON_ORDERED_SET_SITE = https://files.pythonhosted.org/packages/4c/ca/bfac8bc689799bcca4157e0e0ced07e70ce125193fc2e166d2e685b7e2fe
PYTHON_ORDERED_SET_SETUP_TYPE = setuptools
PYTHON_ORDERED_SET_LICENSE = GNU Lesser General Public License v3 (LGPLv3)
PYTHON_ORDERED_SET_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
