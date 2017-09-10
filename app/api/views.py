from flask import Blueprint

api = Blueprint('api', __name__)


@api.route('/hello', methods=['GET'])
def hello():
    """
    TODO
    """
    return 'works'
