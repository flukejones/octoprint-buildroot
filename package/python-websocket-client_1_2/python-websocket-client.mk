################################################################################
#
# python-websocket-client
#
################################################################################

PYTHON_WEBSOCKET_CLIENT_1_2_VERSION = 1.2.3
PYTHON_WEBSOCKET_CLIENT_1_2_SOURCE = websocket-client-$(PYTHON_WEBSOCKET_CLIENT_1_2_VERSION).tar.gz
PYTHON_WEBSOCKET_CLIENT_1_2_SITE = https://files.pythonhosted.org/packages/b6/fa/72e77d094563208174abbbaa73c32f28c43a31193b843bddf233c7c87644
PYTHON_WEBSOCKET_CLIENT_1_2_SETUP_TYPE = setuptools
PYTHON_WEBSOCKET_CLIENT_1_2_LICENSE = LGPL-2.1+
PYTHON_WEBSOCKET_CLIENT_1_2_LICENSE_FILES = LICENSE

$(eval $(python-package))
