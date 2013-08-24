from flask import Flask, request, make_response, url_for
from flask.ext.sqlalchemy import SQLAlchemy

app = Flask(__name__)
# Loads all uppercase variables defined in 'APP_SETTINGS'
app.config.from_envvar('APP_SETTINGS', silent=True)
db = SQLAlchemy(app)


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        print "do something here!"
    elif request.method == 'GET':
        # Two options when rendering client-side templates.
        # return send_file('templates/index.html')
        # The one above caches files, the one below does not (preferred)
        # Not a real response yet. No real index template.
        return make_response(open('templates/index.html').read())

@app.route('/track/<trackId>/lyrics')
def getLyricsByTrackId(trackId):
    print "OUT HERE IN THE FIELDS I FOUGHT FOR MY MEALS I PUT MY BACK INTO MY LIVING"

@app.route('/track/<int:trackId>')
def getTrackById(trackId):
    return "Frownland."

@app.route('/artist/<int:artistId>')
def getArtistById(artistId):
    return "Captian Beefheart"

#---------ERROR HANDLING----------------$
# errorhandler is another flask decorator. Look that up for more 
# information.
@app.errorhandler(404)
def pageNotFound(error):
    return make_response(open('templates/pageNotFound.html').read()), 404

if __name__ == '__main__':
    app.run()

#----------DB STUFF----------------------$
# TODO: Add DB stuff here.
