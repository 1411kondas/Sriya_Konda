'''
    api.py
    Sriya Konda & Kitty Tyree
    fall 2021

    Tiny Flask API to support the tiny books web application.
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
    query = ''' SELECT songs.url, songs.song_name, artists.artist_name, songs.release_date_year, songs.release_date_month, songs.release_date_day
                FROM songs, artists
                WHERE artists.artist_id = songs.artist_id
                AND artists.artist_name CONTAINS %s
                ORDER BY artists.artist_name, songs.song_name'''

    artist_song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (artist_name + '%',))
        for row in cursor:
            song = {'url':row[0], 'song_name':row[1], 'artist_name':row[2], 'release_date_year':row[3], 'release_date_month':row[4], 'release_date_day':row[5]}
            artist_song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(artist_song_list)


@api.route('/generate_playlist/<energy>')
def generate_playlist(energy):
    query = ''' SELECT songs.url, songs.song_name, artists.artist_name
            FROM songs, artists
            WHERE artists.artist_id = songs.artist_id
            AND songs.energy >= %s-.15
            AND songs.energy <= %s+.15
            ORDER BY random()
            LIMIT 20'''
    playlist_song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (energy, energy,))
        for row in cursor:
            song = {'url':row[0], 'song_name':row[1], 'artist_name':row[2]}
            playlist_song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(playlist_song_list)



@api.route('/top_200/<date>')
def getChart(date):
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
    help_text = open('templates/help.txt').read()
    return flask.Response(help_text, mimetype='text/plain')
