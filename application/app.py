from flask import Flask
from controllers.johnodoro import johnodoro_blueprint

app = Flask(__name__)
app.register_blueprint(johnodoro_blueprint)




if __name__ == '__main__':
    app.run("0.0.0.0", port=5000, debug=True)