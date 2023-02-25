################################################################################
#
# python-sentry-sdk
#
################################################################################

PYTHON_SENTRY_SDK_1_5_VERSION = 1.5.12
PYTHON_SENTRY_SDK_1_5_SOURCE = sentry-sdk-$(PYTHON_SENTRY_SDK_1_5_VERSION).tar.gz
PYTHON_SENTRY_SDK_1_5_SITE = https://files.pythonhosted.org/packages/90/d0/59bb92e7e3933635f442268bfb92f0722815fbcdea49883c381da2e9a5c6
PYTHON_SENTRY_SDK_1_5_SETUP_TYPE = setuptools
PYTHON_SENTRY_SDK_1_5_LICENSE = BSD-2-Clause
PYTHON_SENTRY_SDK_1_5_LICENSE_FILES = LICENSE

$(eval $(python-package))
