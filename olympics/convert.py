data_set = open("athlete_events.csv")
data_set.readline()
# athletes_writer = open('athletes.csv', 'w')
# fieldnames = ['athlete_id','name', 'age', 'height', 'weight', 'sex']
# athletes_writer.write(",".join(fieldnames) + '\n')
# id_num = 0
# for line in data_set:
#     fields = line.split(",")
#     athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
#     athletes_list = [athlete_id, name, age, height, weight, sex]
#
#     if fields[0] != id_num:
#         athletes_writer.write(",".join(athletes_list) + '\n')
#         id_num = fields[0]
#     else:
#         continue

# team_writer = open('team.csv', 'w')
# fieldnames = ['team_id','team_name']
# team_writer.write(",".join(fieldnames) + '\n')
# team_name_str_lst = []
# counter = 1
# for line in data_set:
#     fields = line.split(",")
#     athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
#     team_list = [str(counter), team]
#
#     if fields[6] not in team_name_str_lst:
#         team_writer.write(",".join(team_list) + '\n')
#         team_name_str_lst.append(fields[6])
#         id_num = fields[0]
#         counter = counter + 1
#     else:
#         continue

# NOC_writer = open('NOC.csv', 'w')
# fieldnames = ['NOC_id','NOC_name']
# NOC_writer.write(",".join(fieldnames) + '\n')
# NOC_name_str_lst = []
# counter = 1
# for line in data_set:
#     fields = line.split(",")
#     athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
#     team_list = [str(counter), NOC]
#
#     if fields[7] not in NOC_name_str_lst:
#         NOC_writer.write(",".join(team_list) + '\n')
#         NOC_name_str_lst.append(fields[7])
#         counter = counter + 1
#     else:
#         continue
#
# writer = open('sport.csv', 'w')
# fieldnames = ['sport_id','sport_name']
# writer.write(",".join(fieldnames) + '\n')
# name_str_lst = []
# counter = 1
# for line in data_set:
#     fields = line.split(",")
#     athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
#     item_list = [str(counter), sport]
#
#     if fields[12] not in name_str_lst:
#         writer.write(",".join(item_list) + '\n')
#         name_str_lst.append(fields[12])
#         counter = counter + 1
#     else:
#         continue

# writer = open('event.csv', 'w')
# fieldnames = ['event_id','event_name']
# writer.write(",".join(fieldnames) + '\n')
# name_str_lst = []
# counter = 1
# for line in data_set:
#     fields = line.split(",")
#     athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
#     item_list = [str(counter), event]
#
#     if fields[13] not in name_str_lst:
#         writer.write(",".join(item_list) + '\n')
#         name_str_lst.append(fields[13])
#         counter = counter + 1
#     else:
#         continue

# writer = open('medal.csv', 'w')
# fieldnames = ['medal_id','medal']
# writer.write(",".join(fieldnames) + '\n')
# name_str_lst = []
# writer.write('1,NA\n')
# writer.write('2,"Bronze"\n')
# writer.write('3,"Silver"\n')
# writer.write('4,"Gold"\n')

# writer = open('games.csv', 'w')
# fieldnames = ['games_id','games_name','season','year']
# writer.write(",".join(fieldnames) + '\n')
# name_str_lst = []
# counter = 1
# for line in data_set:
#     fields = line.split(",")
#     athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
#     item_list = [str(counter), games,season,year]
#
#     if fields[8] not in name_str_lst:
#         writer.write(",".join(item_list) + '\n')
#         name_str_lst.append(fields[8])
#         counter = counter + 1
#     else:
#        continue

writer = open('cities.csv', 'w')
fieldnames = ['city_id','city_name']
writer.write(",".join(fieldnames) + '\n')
name_str_lst = []
counter = 1
for line in data_set:
    fields = line.split(",")
    athlete_id, name, sex, age, height, weight, team, NOC, games, year, season, city, sport, event, medal = str(fields[0]), fields[1], fields[2], str(fields[3]), str(fields[4]), str(fields[5]), fields[6], fields [7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]
    item_list = [str(counter), city]

    if fields[11] not in name_str_lst:
        writer.write(",".join(item_list) + '\n')
        name_str_lst.append(fields[11])
        counter = counter + 1
    else:
        continue


data_set.close()
