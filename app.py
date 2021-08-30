import os
import datetime

from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def hello_world():
    return_date = datetime.datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    return_env = os.environ.get("ver")
    print(return_date, return_env)
    return render_template("index.html", return_env=return_env, return_date=return_date)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
