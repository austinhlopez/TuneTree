from flask import Flask
#from flask.ext.sqlalchemy import SQLAlchemy

app = Flask(__name__)
# Loads all uppercase variables defined in 'settings'
app.config.from_pyfile('appConfig.py', silent=True)
#db = SQLAlchemy(app)

import tuneTree.views
