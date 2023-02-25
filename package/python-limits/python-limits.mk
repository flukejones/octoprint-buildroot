################################################################################
#
# python-rich
#
################################################################################

PYTHON_LIMITS_VERSION = 3.2.0
PYTHON_LIMITS_SOURCE = limits-$(PYTHON_LIMITS_VERSION).tar.gz
PYTHON_LIMITS_SITE = https://files.pythonhosted.org/packages/6c/21/e40d4422fd9485bbc8fbb952863640d8d3847617c372f1da0952449336b8
PYTHON_LIMITS_SETUP_TYPE = setuptools
PYTHON_LIMITS_LICENSE = GNU Lesser General Public License v3 (LGPLv3)
PYTHON_LIMITS_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
