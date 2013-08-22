from flask import Flask
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        print "do something here!"
    elif request.method == 'GET':
    # Two options when rendering client-side templates.
    # return send_file('templates/index.html')
    # The one above caches files, the one below does not (preferred)
    return make_response(open('templates/index.html').read())
print "Get the API! Render something!"

@app.route('/track/<trackId>/lyrics')
def getLyricsByTrackId(trackId):

    @app.route('/track/<int:trackId>')
def getTrackById(trackId):
    return "Frownland."

@app.route('/artist/<int:artistId>')
def getArtistById(artistId):
    return "Captian Beefheart"

if __name__ == '__main__':
    app.run(debug=True)
