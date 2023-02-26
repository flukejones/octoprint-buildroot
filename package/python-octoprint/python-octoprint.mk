################################################################################
#
# python-octoprint
#
################################################################################

PYTHON_OCTOPRINT_VERSION = 1.8.6
PYTHON_OCTOPRINT_SOURCE = OctoPrint-$(PYTHON_OCTOPRINT_VERSION).tar.gz
PYTHON_OCTOPRINT_SITE = https://files.pythonhosted.org/packages/fc/91/f0c0afa62c7b7ad8a0fb5345b177643086cff1e4d766c9fe7d2cc103f9d6
PYTHON_OCTOPRINT_SETUP_TYPE = setuptools
PYTHON_OCTOPRINT_LICENSE = GNU Affero General Public License v3
PYTHON_OCTOPRINT_LICENSE_FILES = LICENSE.txt

define PYTHON_OCTOPRINT_USERS
	foo -1 bar -1 !=blabla /home/foo /bin/sh alpha,bravo Foo user
	octoprint -1 octoprint -1 =octoprint /home/octoprint /bin/sh - -
endef

$(eval $(python-package))
