from flask import Flask
app = Flask(__name__)


@app.route('/track/<trackId>/lyrics')
def getLyrics(trackId):
    return "Jeremiah was a bullfrog! BA BA BA"

@app.route('/track/<int:trackId>')
def getTrackById(trackId):
    return "Frownland."

@app.route('/artist/<int:artistId>')
def getArtistById(artistId):
    return "Captian Beefheart"
if __name__ == '__main__':
    app.run(debug=True)
