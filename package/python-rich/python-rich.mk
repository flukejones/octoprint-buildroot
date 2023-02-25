################################################################################
#
# python-rich
#
################################################################################

PYTHON_RICH_VERSION = 12.6.0
PYTHON_RICH_SOURCE = rich-$(PYTHON_RICH_VERSION).tar.gz
PYTHON_RICH_SITE = https://files.pythonhosted.org/packages/11/23/814edf09ec6470d52022b9e95c23c1bef77f0bc451761e1504ebd09606d3
PYTHON_RICH_SETUP_TYPE = setuptools
PYTHON_RICH_LICENSE = GNU Lesser General Public License v3 (LGPLv3)
PYTHON_RICH_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
