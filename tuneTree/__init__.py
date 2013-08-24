from flask import Flask, request, make_response, url_for
#from flask.ext.sqlalchemy import SQLAlchemy

app = Flask(__name__)
# Loads all uppercase variables defined in 'settings'
app.config.from_pyfile('appConfig.py', silent=True)
#db = SQLAlchemy(app)

import tuneTree.views
