CREATE TABLE athletes (
athlete_id INTEGER,
athlete_name TEXT);

CREATE TABLE events (
event_id INTEGER,
event_name TEXT);

CREATE TABLE event_results (
athlete_id INTEGER,
games_id INTEGER,
event_id INTEGER,
medal TEXT);

CREATE TABLE games (
games_id INTEGER,
games_name TEXT,
year INTEGER,
season TEXT,
city TEXT);

CREATE TABLE teams (
team_id INTEGER,
team_name TEXT);

CREATE TABLE NOC_regions (
NOC_id INTEGER,
NOC_name TEXT);

CREATE TABLE teamNames_NOC (
team_id INTEGER,
NOC_id INTEGER);

CREATE TABLE athlete_stats (
athlete_id INTEGER,
games_id INTEGER,
team_id INTEGER,
athlete_sex TEXT,
athlete_age INTEGER,
athlete_height FLOAT,
athlete_weight FLOAT);

CREATE TABLE sports (
sport_id INTEGER,
sport_name TEXT);

CREATE TABLE events_sport (
event_id INTEGER,
sport_id INTEGER);

SELECT noc_regions.NOC_name
FROM noc_regions
ORDER BY noc_regions.NOC_name;

SELECT DISTINCT athletes.athlete_name
FROM athletes, athlete_stats, teams
WHERE athletes.athlete_id = athlete_stats.athlete_id
AND teams.team_id = athlete_stats.team_id
AND teams.team_name = 'Kenya'
ORDER BY athletes.athlete_name;

SELECT events.event_name, games.city, games.season, games.year, event_results.medal
FROM events, event_results, games, athletes
Where athletes.athlete_name = 'Gregory Efthimios "Greg" Louganis'
AND athletes.athlete_id = event_results.athlete_id
AND event_results.event_id = events.event_id
AND event_results.games_id = games.games_id
AND event_results.medal IS NOT NULL
ORDER BY games.year, events.event_name;

SELECT noc_regions.noc_name, COUNT(event_results.medal)
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
ORDER BY COUNT(event_results.medal) DESC, noc_regions.noc_name;
