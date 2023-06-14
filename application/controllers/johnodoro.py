from flask import Blueprint, render_template

johnodoro_blueprint = Blueprint("johnodoro", __name__)


@app.route('/')
def index():
    return render_template()
