from . import auth


@auth.route('/hello', methods=['GET'])
def hello():
    """
    TODO
    """
    return 'works'
