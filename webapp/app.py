'''
    app.py
    Sriya Konda & Kitty Tyree
    fall 2021

    A small Flask application that provides a barelywebsite with an accompanying
    API (which is also tiny) to support that website.
'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/')

@app.route('/home')
def home():
    return flask.render_template('mockup1.html')

@app.route('/artists')
def artists():
    return flask.render_template('mockup2.html')

@app.route('/top_200')
def chart():
    return flask.render_template('mockup3.html')

@app.route('/generate_playlist')
def make_playlist():
    return flask.render_template('mockup4.html')


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
