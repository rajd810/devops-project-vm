#https://www.geeksforgeeks.org/single-page-portfolio-using-flask/
from flask import Flask, render_template, request,  url_for, redirect

from flask_wtf import FlaskForm
from wtforms import StringField, validators, PasswordField, SubmitField
from wtforms.validators import DataRequired, Email
import email_validator


app = Flask(__name__)

@app.route("/")
def base():
    return render_template("base.html")

if __name__ == "__main__":
    app.run(debug=True)