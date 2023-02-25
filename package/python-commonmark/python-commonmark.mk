################################################################################
#
# python-commonmark
#
################################################################################

PYTHON_COMMONMARK_VERSION = 0.9.1
PYTHON_COMMONMARK_SOURCE = commonmark-$(PYTHON_COMMONMARK_VERSION).tar.gz
PYTHON_COMMONMARK_SITE = https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0
PYTHON_COMMONMARK_SETUP_TYPE = setuptools
PYTHON_COMMONMARK_LICENSE = FIXME: please specify the exact BSD version
PYTHON_COMMONMARK_LICENSE_FILES = LICENSE.rst docs/license.rst

$(eval $(python-package))
