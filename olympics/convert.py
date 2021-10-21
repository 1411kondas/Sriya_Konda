'''
    October 19th 2021.
    Kitty Tyree
    Olympics database design for cs257 in fall 2021
'''

import csv

# MAP AN ATHLETE ID TO THE ATHLETE'S NAME
# why are we only mapping athlete id to their name? because if they competed
# in multiple games, their weight, and age and other body stats may have changed
# I am not tying them to their sex either, I cannot be sure that
# doesn't change across olympics.
athletes = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
athletes_file = open('athletes.csv', 'w')
writer = csv.writer(athletes_file)
next(reader)
for row in reader:
    athlete_id = row[0] #this is a string
    athlete_name = row[1]
    if athlete_id not in athletes: #Have I seen the athlete before? No? great! do the thing!
        athletes[athlete_id] = athlete_name  #mapping ids to athlete names
        writer.writerow([athlete_id, athlete_name]) #saving in athletes.csv
csv_file.close()
athletes_file.close()


# MAP AN EVENT TO A CREATED EVENT ID
# why are we doing that? because we don't have event id's listed anywhere in
# connection to the athletes, we just have the names of the events.
# So to make it easier, make them accessable by name so we can later match
# to the event and get the ID

events = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
events_file = open('events.csv', 'w')
writer = csv.writer(events_file)
next(reader)
id_counter = 1
for row in reader:
    event_name = row[13]
    if event_name not in events: #Have I seen the event before? No? great! do the thing!
        event_id = id_counter
        id_counter += 1
        events[event_name] = event_id
        writer.writerow([event_id, event_name])
events_file.close()
csv_file.close()


# MAP A SPORT TO A CREATED SPORT ID
sports = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
sports_file = open('sports.csv', 'w')
writer = csv.writer(sports_file)
next(reader)
id_counter = 1
for row in reader:
    sport_name = row[12]
    if sport_name not in sports: #Have I seen the event before? No? great! do the thing!
        sport_id = id_counter
        id_counter += 1
        sports[sport_name] = sport_id
        writer.writerow([sport_id, sport_name])
sports_file.close()
csv_file.close()


# MATCHING EVENTS TO THEIR SPORT
events_sport = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
events_sport_file = open('events_sport.csv', 'w')
writer = csv.writer(events_sport_file)
next(reader)
id_counter = 1
for row in reader:
    sport_name = row[12]
    sport_id = sports[sport_name]
    event_name = row[13]
    event_id = events[event_name]
    if event_id not in events_sport: #Have I seen the event before? No? great! do the thing!
        events_sport[event_id] = sport_id
        writer.writerow([event_id, sport_id])
events_sport_file.close()
csv_file.close()



# I want an olympic games file with identifying Ids
# MAP A GAME TO A CREATED GAME ID


games = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
games_file = open('games.csv', 'w')
writer = csv.writer(games_file)
next(reader)
id_counter = 1
for row in reader:
    games_name = row[8]
    year = row[9]
    season = row[10]
    city = row[11]
    if games_name not in games: #Have I seen the games before? No? great! do the thing!
        games_id = id_counter
        id_counter += 1

        games[games_name] = {"games_id":games_id, "year": year, "season": season, "city": city}
        writer.writerow([games_id, games_name, year, season, city])
games_file.close()
csv_file.close()




# MAP A TEAM NAME TO AN ID
teams = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
teams_file = open('teams.csv', 'w')
writer = csv.writer(teams_file)
next(reader)
id_counter = 1
for row in reader:
    team_name = row[6]
    if team_name not in teams: #Have I seen the team before? No? great! do the thing!
        team_id = id_counter
        id_counter += 1

        teams[team_name] = team_id
        writer.writerow([team_id, team_name])
teams_file.close()
csv_file.close()


# MAP A NOC TO AN ID

NOC_regions = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
NOC_regions_file = open('NOC_regions.csv', 'w')
writer = csv.writer(NOC_regions_file)
next(reader)
id_counter = 1
for row in reader:
    NOC_name = row[7]
    if NOC_name not in NOC_regions: #Have I seen the team before? No? great! do the thing!
        NOC_id = id_counter
        id_counter += 1

        NOC_regions[NOC_name] = NOC_id
        writer.writerow([NOC_id, NOC_name])
NOC_regions_file.close()
csv_file.close()


# MAP TEAM IDS TO NOC IDS
team_NOC = {}
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
team_NOC_file = open('teamNames_NOC.csv', 'w')
writer = csv.writer(team_NOC_file)
next(reader)
for row in reader:
    team_name = row[6]
    team_id = teams[team_name]
    NOC_name = row[7]
    NOC_id = NOC_regions[NOC_name]
    if team_id not in team_NOC:
        team_NOC[team_id] = NOC_id
        writer.writerow([team_id, NOC_id])
team_NOC_file.close()
csv_file.close()


# TIE ATHLETE IDS TO EVENT IDS AND THEIR MEDALS
# For each row in the original athlete_events.csv file, build a row for
# the event_results.csv table
csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
event_results_file = open('event_results.csv', 'w')
writer = csv.writer(event_results_file)
next(reader)
for row in reader:
    athlete_id = row[0]
    event_name = row[13]
    event_id = events[event_name] # this goes into the events dictionary and retrieves the ID number
    games_name = row[8]
    games_id = games[games_name]["games_id"]
    medal = row[14]
    writer.writerow([athlete_id, games_id, event_id, medal])
event_results_file.close()
csv_file.close()



# I want a file that has the athlete stats at each olympic games
# Includes athlete_id, games_id, team_id, athlete_sex, athlete-age, athlete_height, athlete_weight

csv_file = open('athlete_events.csv')
reader = csv.reader(csv_file)
athlete_stats_file = open('athlete_stats.csv', 'w')
writer = csv.writer(athlete_stats_file)
next(reader)

# I need it to only go if the athlete for that specific game has yet to be counted
doubles_list=[]
curr_athlete_id = 1
for row in reader:
    athlete_id = row[0]
    if athlete_id != curr_athlete_id:
        doubles_list.clear()
        curr_athlete_id = athlete_id
    athlete_sex = row[2]
    athlete_age = row[3]
    athlete_height = row[4]
    athlete_weight = row[5]
    team_name = row[6]
    team_id = teams[team_name]
    games_name = row[8]
    games_id = games[games_name]["games_id"]
    athlete_id_game_double = (athlete_id,games_id)
    if athlete_id_game_double not in doubles_list:
        writer.writerow([athlete_id, games_id, team_id, athlete_sex, athlete_age, athlete_height, athlete_weight])
        doubles_list.append(athlete_id_game_double)
athlete_stats_file.close()
csv_file.close()
