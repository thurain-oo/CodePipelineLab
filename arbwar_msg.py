from flask import Flask, render_template_string
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return render_template_string('<h1>{{ name }}</h1>', name=os.environ['NAME'])

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
