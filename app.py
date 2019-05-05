#!/usr/bin/env python
# -*- coding: utf-8 -*- 

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    html = """
        <img src="https://images.dog.ceo/breeds/weimaraner/n02092339_6498.jpg" alt="Random Doggo">
    """
    return html

if __name__ == '__main__':
    app.run(host='0.0.0.0')
