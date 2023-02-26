################################################################################
#
# python-idna
#
################################################################################

PYTHON_IDNA_2_6_VERSION = 2.10
PYTHON_IDNA_2_6_SOURCE = idna-$(PYTHON_IDNA_2_6_VERSION).tar.gz
PYTHON_IDNA_2_6_SITE = https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70
PYTHON_IDNA_2_6_LICENSE = BSD-3-Clause
PYTHON_IDNA_2_6_LICENSE_FILES = LICENSE.md
PYTHON_IDNA_2_6_SETUP_TYPE = setuptools

$(eval $(python-package))
$(eval $(host-python-package))
