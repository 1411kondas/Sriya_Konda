'''
    api.py
    Sriya Konda & Kitty Tyree
    For use in the "webapp" assignment for Carleton's
    CS 257 Software Design class, Fall 2021.
'''
import sys
import flask
import json
import config
import psycopg2


api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)



@api.route('/artists/<artist_name>')
def get_songs_for_artist(artist_name):
    ''' This api route returns a JSON list of dictionaries containing an artist's
        id and name.
        <artist_name> is a user inputted string, and is used case
        insensitively to find matches within artists in the database. '''

    artist_arguments = '%' + artist_name + '%'
    query = ''' SELECT artists.artist_id, artists.artist_name
                FROM artists
                WHERE artists.artist_name ILIKE %s
                ORDER BY artists.artist_name'''

    artist_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (artist_arguments,))
        for row in cursor:
            song = {'artist_id':row[0], 'artist_name':row[1]}
            artist_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(artist_list)



@api.route('/artist/<artist_id>')
def get_song_list(artist_id):
    ''' This api route returns a JSON list of dictionaries containing the songs
        that an artist had on the top charts of 2020.
        Each dictonary contains a url to the song, song name, release date year, month, and day.
        <artist_id> is an integer ID number that links to an artist.'''

    query = ''' SELECT songs.url, songs.song_name, songs.release_date_year, songs.release_date_month, songs.release_date_day
                FROM songs, artists
                WHERE artists.artist_id = %s
                AND artists.artist_id = songs.artist_id
                ORDER BY songs.song_name'''

    artist_song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (artist_id,))
        for row in cursor:
            song = {'url':row[0], 'song_name':row[1], 'release_date_year':row[2], 'release_date_month':row[3], 'release_date_day':row[4]}
            artist_song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(artist_song_list)



@api.route('/generate_playlist')
def generate_playlist():
    ''' This api route returns a JSON list of dictionaries containing songs that
        match the criteria given in the arguments.
        Each dictionary contains a url to the song, song name, and artist name.'''

    energy = flask.request.args.get('energy', default = 0.5)
    danceability = flask.request.args.get('danceability', default = 0.5)
    tempo = flask.request.args.get('tempo', default = 120)
    liveliness = flask.request.args.get('liveliness', default = 0.5)
    query = ''' SELECT songs.url, songs.song_name, artists.artist_name
            FROM songs, artists
            WHERE artists.artist_id = songs.artist_id
            AND songs.energy >= %s-.20
            AND songs.energy <= %s+.20
            AND songs.danceability >= %s-.30
            AND songs.danceability <= %s+.30
            AND songs.liveliness >= %s-.30
            AND songs.liveliness <= %s+.30
            AND songs.tempo >= %s-30
            AND songs.tempo <= %s+30
            ORDER BY random()
            LIMIT 20'''

    playlist_song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (energy, energy, danceability, danceability, liveliness, liveliness, tempo, tempo,))
        for row in cursor:
            song = {'url':row[0], 'song_name':row[1], 'artist_name':row[2]}
            playlist_song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)
    sorted_song_list = sorted(playlist_song_list, key=lambda s: s['song_name']) 
    return json.dumps(sorted_song_list)



@api.route('/top_200/<date>')
def getChart(date):
    ''' This api route returns a list of dictornaries that make up
        the top 200 chart for the day passed throug by <date>.
        Each dictionary contains a url to the song, ranking in the chart, song name,
        and artist name. '''

    query = ''' SELECT songs.url, weekly_ranks.ranking, songs.song_name, artists.artist_name
                FROM songs, artists, weekly_ranks
                WHERE artists.artist_id = songs.artist_id
                AND artists.artist_id = weekly_ranks.artist_id
                AND songs.artist_id = weekly_ranks.artist_id
                AND songs.song_id = weekly_ranks.song_id
                AND weekly_ranks.week_start_date <= TO_DATE(%s,'YYYYMMDD')
                AND weekly_ranks.week_end_date > TO_DATE(%s,'YYYYMMDD')
                ORDER BY weekly_ranks.ranking
                '''

    week_song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (date, date, ))
        for row in cursor:
            song = {'url':row[0], 'song_rank':row[1], 'song_name':row[2], 'artist_name':row[3]}
            week_song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(week_song_list)



@api.route('/help')
def help():
    ''' The help api route. Displays documentation describing how to use the api.'''
    help_text = open('templates/help.txt').read()
    return flask.Response(help_text, mimetype='text/plain')
