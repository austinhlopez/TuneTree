from tuneTree import app
from flask import Flask, request, make_response, url_for

# Register a flask route for every route in the angular app
@app.route('/')
def index():
    return make_response(open('tuneTree/templates/index.html').read())


# TODO: I'd like to handle displaying the front end via angular rout#es, but allow RESTful API's via FLASK. Ideally, I would be able 
# to use flask routes as endpoints for the backend, via 
# flask-restless or something like that.

@app.route('/track/<int:trackId>', methods=['GET', 'POST'])
def getTrackById(trackId):
    if request.method == 'POST':
        return "Frownland."
    else:
        return index()
"""
@app.route('/track/<int:trackId>/lyrics')
def getLyricsByTrackId(trackId):
    return "OUT HERE IN THE FIELDS I FOUGHT FOR MY MEALS I PUT MY BACK INTO MY LIVING"

@app.route('/artist/<int:artistId>')
def getArtistById(artistId):
    return "Captian Beefheart"
"""
#---------ERROR HANDLING----------------$
# errorhandler is another flask decorator. Look that up for more 
# information.
@app.errorhandler(404)
def pageNotFound(error):
    return make_response(open('tuneTree/templates/pageNotFound.html').read()), 404

