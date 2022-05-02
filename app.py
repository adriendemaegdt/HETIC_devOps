
from flask import Flask
from flask import jsonify
from flask import request
from flask import abort

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World from Python'


if __name__ == "__main__":
  app.run()