'''
    app.py
    Sriya Konda & Kitty Tyree
    For use in the "webapp" assignment for Carleton's
    CS 257 Software Design class, Fall 2021.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/')
@app.route('/home')
def home():
    return flask.render_template('homepage.html')


@app.route('/artists')
def artists():
    return flask.render_template('artist_search.html')


@app.route('/top_200')
def chart():
    return flask.render_template('date_search.html')


@app.route('/generate_playlist')
def make_playlist():
    return flask.render_template('generate_playlist.html')



@app.route('/help')
def help():
    help_text = open('templates/help.txt').read()
    return flask.Response(help_text, mimetype='text/plain')


if __name__ == '__main__':
    parser = argparse.ArgumentParser('A spotify application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
