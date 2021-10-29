#!/usr/bin/env python3
'''
    olympics-api.py
    Kitty Tyree October 28, 2021
'''
import sys
import argparse
import flask
import json
import psycopg2

from config import password
from config import database
from config import user

app = flask.Flask(__name__)



@app.route('/games')
def get_games():
    '''RESPONSE: a JSON list of dictionaries, each of which represents one
    Olympic games, sorted by year. Each dictionary in this list will have
    the following fields.

    id -- (INTEGER) a unique identifier for the games in question
    year -- (INTEGER) the 4-digit year in which the games were held (e.g. 1992)
    season -- (TEXT) the season of the games (either "Summer" or "Winter")
    city -- (TEXT) the host city (e.g. "Barcelona")
    '''
    # Set up the connection to database
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
        exit()

    query = '''SELECT games.games_id, games.year, games.season, games.city
              FROM games
              ORDER BY games.year'''

    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    games_list = []

    for row in cursor:
        games_id = row[0]
        game_year = row[1]
        game_season = row[2]
        game_city = row[3]
        game = {'id': games_id, 'year': game_year, 'season': game_season, 'city': game_city}
        games_list.append(game)
    connection.close()
    return json.dumps(games_list)


@app.route('/nocs')
def get_nocs():
    '''RESPONSE: a JSON list of dictionaries, each of which represents one
    National Olympic Committee, alphabetized by NOC abbreviation. Each dictionary
    in this list will have the following fields.

    abbreviation -- (TEXT) the NOC's abbreviation (e.g. "USA", "MEX", "CAN", etc.)
    name -- (TEXT) the NOC's full name (see the noc_regions.csv file)
    '''
    # Set up the connection to database
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
        exit()
    query = '''SELECT noc_regions.NOC_abbr, noc_regions.NOC_full_name
              FROM NOC_regions
              ORDER BY noc_regions.NOC_abbr'''

    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    NOC_list = []

    for row in cursor:
        noc_abbr = row[0]
        noc_full_name = row[1]
        NOC = {'abbreviation': noc_abbr, 'name':noc_full_name}
        NOC_list.append(NOC)
    connection.close()
    return json.dumps(NOC_list)


@app.route('/medalists/games/<games_id>')
def get_medalists(games_id):
    '''
    RESPONSE: a JSON list of dictionaries, each representing one athlete
    who earned a medal in the specified games. Each dictionary will have the
    following fields.

    athlete_id -- (INTEGER) a unique identifier for the athlete
    athlete_name -- (TEXT) the athlete's full name
    athlete_sex -- (TEXT) the athlete's sex as specified in the database ("F" or "M")
    sport -- (TEXT) the name of the sport in which the medal was earned
    event -- (TEXT) the name of the event in which the medal was earned
    medal -- (TEXT) the type of medal ("gold", "silver", or "bronze")

    If the GET parameter noc=noc_abbreviation is present, this endpoint will return
    only those medalists who were on the specified NOC's team during the specified
    games.

    The <games_id> is whatever string (digits or otherwise) that your database/API
    uses to uniquely identify an Olympic games.
    '''

    # Set up the connection to database
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
        exit()

    query = '''SELECT athletes.athlete_id, athletes.athlete_name, athlete_stats.athlete_sex, sports.sport_name, events.event_name,  event_results.medal, noc_regions.noc_abbr
             FROM athletes, athlete_stats, event_results, events, games, sports, noc_regions, events_sport, teamnames_noc
             WHERE athletes.athlete_id = athlete_stats.athlete_id
             AND athletes.athlete_id = event_results.athlete_id
             AND athlete_stats.athlete_id = event_results.athlete_id
             AND athlete_stats.games_id = event_results.games_id
             AND athlete_stats.games_id = games.games_id
             AND athlete_stats.team_id = teamnames_noc.team_id
             AND event_results.event_id = events.event_id
             AND event_results.event_id = events_sport.event_id
             AND event_results.games_id = games.games_id
             AND events.event_id = events_sport.event_id
             AND sports.sport_id = events_sport.sport_id
             AND teamnames_noc.noc_id = noc_regions.noc_id
             AND event_results.medal IS NOT NULL
             AND games.games_id = %s
             ORDER BY athletes.athlete_name'''

    try:
        cursor = connection.cursor()
        cursor.execute(query, (games_id,))
    except Exception as e:
        print(e)
        exit()

    medalist_list = []
    NOC_arg = flask.request.args.get('noc')
    for row in cursor:
        athlete_id = row[0]
        athlete_name = row[1]
        athlete_sex = row[2]
        sport = row[3]
        event = row[4]
        medal = row[5]
        noc = row[6]

        if NOC_arg is not None and NOC_arg != noc:
            continue
        athlete = {'athlete_id': athlete_id,
                   'athlete_name': athlete_name,
                   'athlete_sex': athlete_sex,
                   'sport': sport,
                   'event': event,
                   'medal': medal}
        medalist_list.append(athlete)
    connection.close()
    return json.dumps(medalist_list)





if __name__ == '__main__':
    parser = argparse.ArgumentParser('API for the olympics database')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
