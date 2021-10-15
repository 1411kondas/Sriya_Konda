CREATE TABLE athletes (
athlete_id INTEGER,
name TEXT,
age INTEGER,
height INTEGER,
weight INTEGER,
sex TEXT);

CREATE TABLE cities (
city_id INTEGER,
city_name TEXT);

CREATE TABLE event (
event_id INTEGER,
event_name TEXT);

CREATE TABLE games (
games_id INTEGER,
games_name TEXT,
season TEXT,
year INTEGER);

CREATE TABLE medal (
medal_id INTEGER,
medal TEXT);

CREATE TABLE NOC (
NOC_id Integer,
NOC_name TEXT);

CREATE TABLE sport (
sport_id INTEGER,
sport_name TEXT);

CREATE TABLE team (
team_id INTEGER,
team_name TEXT);

SELECT NOC_name
from NOC
ORDER BY NOC_name;


