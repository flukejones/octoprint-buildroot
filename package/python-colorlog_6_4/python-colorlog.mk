################################################################################
#
# python-colorlog
#
################################################################################

PYTHON_COLORLOG_6_4_VERSION = 6.4.1
PYTHON_COLORLOG_6_4_SOURCE = colorlog-$(PYTHON_COLORLOG_6_4_VERSION).tar.gz
PYTHON_COLORLOG_6_4_SITE = https://files.pythonhosted.org/packages/d6/4a/840f6cb7e922a717c765a3cdc6988aff22a6ef211d88c8d16701dfbd664f
PYTHON_COLORLOG_6_4_SETUP_TYPE = setuptools
PYTHON_COLORLOG_6_4_LICENSE = MIT
PYTHON_COLORLOG_6_4_LICENSE_FILES = LICENSE

$(eval $(python-package))
