'''
    Kitty Tyree
    October 21, 2021
    Fall CS257 database-driven command-line application assignment.
'''

import argparse
import psycopg2

from config import password
from config import database
from config import user

# Set up the connection first off
try:
    connection = psycopg2.connect(database=database, user=user, password=password)
except Exception as e:
    print(e)
    exit()


def main():

    args = setUpArgParserAndParse()

    if args.help:
        usage = open('help_statement.txt', 'r')
        help_message = usage.read()
        print(help_message)
        usage.close()
        exit()

    elif args.athletes_by_NOC is not None:
        athletesFromNOC(args.athletes_by_NOC)

    elif args.NOC_gold_count:
        NOCMedalCount()

    elif args.Medal_by_age is not None:
        medalersByAge(args.Medal_by_age)

# List the names of all the athletes from a specified NOC.
def athletesFromNOC(noc_of_choice):
    NOC_search_string = noc_of_choice
    query = '''SELECT DISTINCT athletes.athlete_name
               FROM athletes, noc_regions, athlete_stats, teamnames_noc
               WHERE athletes.athlete_id = athlete_stats.athlete_id
               AND noc_regions.noc_id = teamnames_noc.noc_id
               AND athlete_stats.team_id = teamnames_noc.team_id
               AND noc_regions.noc_name = %s
               ORDER BY athletes.athlete_name'''
    try:
        cursor = connection.cursor()
        cursor.execute(query, (NOC_search_string,))
    except Exception as e:
        print(e)
        exit()


    print('===== All athletes from {0} ====='.format(NOC_search_string))
    for row in cursor:
        print(row[0])
    print()

    connection.close()


#List all the NOCs and the number of gold medals they have won,
# in decreasing order of the number of gold medals.
def NOCMedalCount():
    query = '''SELECT noc_regions.noc_name, COUNT(event_results.medal)
               FROM noc_regions, event_results, athletes, athlete_stats, teams, teamnames_noc
               WHERE noc_regions.noc_id = teamnames_noc.noc_id
               AND event_results.athlete_id = athletes.athlete_id
               AND event_results.athlete_id = athlete_stats.athlete_id
               AND event_results.games_id = athlete_stats.games_id
               AND athletes.athlete_id = athlete_stats.athlete_id
               AND athlete_stats.team_id = teams.team_id
               AND teams.team_id = teamnames_noc.team_id
               AND event_results.medal = 'Gold'
               GROUP BY noc_regions.noc_name
               ORDER BY COUNT(event_results.medal) DESC, noc_regions.noc_name'''

    try:
        cursor = connection.cursor()
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    print('===== NOC MEDAL COUNT =====')
    for row in cursor:
        print(row[0], row[1])
    print()

    connection.close()


# List all of the athletes who have won medals by a given age (num)
# Formatted in the following way:
# athlete_name, noc_region, athlete_age, medal, games_name, event_name
def medalersByAge(num):
    query = '''SELECT athletes.athlete_name, noc_regions.noc_name, athlete_stats.athlete_age, event_results.medal, games.games_name, events.event_name
               FROM athletes, athlete_stats, event_results, events, games, noc_regions, teamnames_noc
               WHERE athletes.athlete_id = athlete_stats.athlete_id
               AND athletes.athlete_id = event_results.athlete_id
               AND athlete_stats.athlete_id = event_results.athlete_id
               AND athlete_stats.games_id = games.games_id
               AND athlete_stats.games_id = event_results.games_id
               AND athlete_stats.team_id = teamnames_noc.team_id
               AND teamnames_noc.noc_id = noc_regions.noc_id
               AND event_results.games_id = games.games_id
               AND event_results.event_id = events.event_id
               AND event_results.medal IS NOT NULL
               AND athlete_stats.athlete_age <= %s
               ORDER BY athlete_stats.athlete_age, athletes.athlete_name'''

    try:
        cursor = connection.cursor()
        cursor.execute(query, (num,))
    except Exception as e:
        print(e)
        exit()


    print('===== ATHLETES WHO MEDALED BY THE AGE OF {0} ====='.format(num))
    for row in cursor:
        # Creating nice columns to display data
        print('{: <50} {: <10} {: <10} {: <15} {: <16} {: <20}'.format(*row))
    print()

    connection.close()


def setUpArgParserAndParse():
    ''' This function sets up an argument parser and parses the CLI user input.
        It returns the parsed arguments. '''
    parser = argparse.ArgumentParser(description='Query the database',
                                    add_help=False)

    # Prohibit the user from using multiple search categories
    mainFunctionGroup = parser.add_mutually_exclusive_group()
    mainFunctionGroup.add_argument('--athletes_by_NOC',
                                    metavar='NOC',
                                    help="Find athletes who played for a given NOC.",
                                    type=str)
    mainFunctionGroup.add_argument('--NOC_gold_count',
                                    help="View the NOC regions and thier gold medal counts.",
                                    action='store_true')
    mainFunctionGroup.add_argument('--Medal_by_age',
                                    metavar='AGE',
                                    help="Find athletes who earned a medal by a given age",
                                    type=int)
    parser.add_argument('-h', '--help',
                        help="Print this usage statement then exit",
                        action='store_true')

    args = parser.parse_args()
    return args


if __name__ == '__main__':
    main()
