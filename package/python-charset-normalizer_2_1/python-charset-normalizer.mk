################################################################################
#
# python-charset-normalizer
#
################################################################################

PYTHON_CHARSET_NORMALIZER_2_1_VERSION = 2.1.1
PYTHON_CHARSET_NORMALIZER_2_1_SOURCE = charset-normalizer-$(PYTHON_CHARSET_NORMALIZER_2_1_VERSION).tar.gz
PYTHON_CHARSET_NORMALIZER_2_1_SITE = https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94
PYTHON_CHARSET_NORMALIZER_2_1_SETUP_TYPE = setuptools
PYTHON_CHARSET_NORMALIZER_2_1_LICENSE = MIT
PYTHON_CHARSET_NORMALIZER_2_1_LICENSE_FILES = LICENSE

$(eval $(python-package))
$(eval $(host-python-package))
