#! /user/bin/env python3
# -*- coding: utf-8 -*-
from flask import Flask, jsonify
import pymysql

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "hello world"


if __name__ == '__main__':
    app.config['JSON_AS_ASCII'] = False
    app.run(host='0.0.0.0',port='8085', debug=True)
