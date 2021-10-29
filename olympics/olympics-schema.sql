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
NOC_abbr TEXT,
NOC_full_name TEXT);

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
