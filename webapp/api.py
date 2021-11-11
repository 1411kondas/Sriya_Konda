'''
    api.py
    Sriya Konda & Kitty Tyree
    fall 2021

    Tiny Flask API to support the tiny books web application.
'''
import sys
import flask
import json
import psycopg2
import config


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
    query = ''' SELECT songs.url, songs.song_name, songs.release_date
                FROM songs, artists
                WHERE artists.artist_id = songs.artist_id
                AND artists.artist_name LIKE %s
                ORDER BY songs.song_name'''
    artist_song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (artist_name,))
        for row in cursor:
            song = {'url':row[0], 'song_name':row[1], 'release_date':row[2]}
            artist_song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(artist_song_list)


@api.route('/generate_playlist/<energy><danceability><speechiness>')
def generate_playlist(energy, danceability, speechiness):
    if duration is not NULL:
        query = ''' SELECT songs.url, songs.song_name, artists.artist_name
                    FROM songs, artists
                    WHERE artists.artist_id = songs.artist_id
                    AND songs.energy BETWEEEN %s-.1 AND %s+.1
                    AND songs.danceability BETWEEN %s-.1 AND %s+.1
                    AND songs.speechiness BETWEEN %s-.1 AND %s+.1
                    ORDER BY RAND()'''
    else:
        query = ''' SELECT songs.url, songs.song_name, artists.artist_name
                FROM songs, artists
                WHERE artists.artist_id = songs.artist_id
                AND songs.energy BETWEEEN %s-.1 AND %s+.1
                AND songs.danceability BETWEEN %s-.1 AND %s+.1
                AND songs.speechiness BETWEEN %s-.1 AND %s+.1
                ORDER BY RAND()'''
    song_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (energy, energy,))
        for row in cursor:
            song = {'url':row[0], 'song_name':row[1], 'release_date':row[2]}
            song_list.append(song)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(song_list)
