################################################################################
#
# python-flask-login
#
################################################################################

PYTHON_FLASK_LOGIN_0_5_VERSION = 0.5.0
PYTHON_FLASK_LOGIN_0_5_SOURCE = Flask-Login-$(PYTHON_FLASK_LOGIN_0_5_VERSION).tar.gz
PYTHON_FLASK_LOGIN_0_5_SITE = https://files.pythonhosted.org/packages/f9/01/f6c0a3a654ca125cf9cd273314c03a8bc6a47bf861765c8c1d375e15a28d
PYTHON_FLASK_LOGIN_0_5_LICENSE = MIT
PYTHON_FLASK_LOGIN_0_5_LICENSE_FILES = LICENSE
PYTHON_FLASK_LOGIN_0_5_SETUP_TYPE = setuptools

$(eval $(python-package))
