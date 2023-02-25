################################################################################
#
# python-flask-assets
#
################################################################################

PYTHON_FLASK_LIMITER_VERSION = 2.9.2
PYTHON_FLASK_LIMITER_SOURCE = Flask-Limiter-$(PYTHON_FLASK_LIMITER_VERSION).tar.gz
PYTHON_FLASK_LIMITER_SITE = https://files.pythonhosted.org/packages/28/87/83bc93c0a3186df3b38587e6b1d9bed41be4abbae01edad7843ac5059d1c
PYTHON_FLASK_LIMITER_SETUP_TYPE = setuptools
PYTHON_FLASK_LIMITER_LICENSE = FIXME: please specify the exact BSD version
PYTHON_FLASK_LIMITER_LICENSE_FILES = LICENSE

$(eval $(python-package))
