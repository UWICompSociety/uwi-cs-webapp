SECRET_KEY = 'top$secret@shit&mate'
SQLALCHEMY_DATABASE_URI = 'postgresql://daytonjallen@localhost/uwi-cs-webapp'

class Config(object):
    """
    Common configurations
    """

    # Put any configurations here that are common across all environments


class DevelopmentConfig(Config):
    """
    Development configurations
    """

    DEBUG = True
    SQLALCHEMY_ECHO = True


class ProductionConfig(Config):
    """
    Production configurations
    """

    DEBUG = False

app_config = {
    'development': DevelopmentConfig,
    'production': ProductionConfig
}