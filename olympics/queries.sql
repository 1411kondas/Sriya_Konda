SELECT noc_regions.NOC_abbr
FROM noc_regions
ORDER BY noc_regions.NOC_abbr;

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

SELECT noc_regions.noc_abbr, COUNT(event_results.medal)
FROM noc_regions, event_results, athletes, athlete_stats, teams, teamnames_noc
WHERE noc_regions.noc_id = teamnames_noc.noc_id
AND event_results.athlete_id = athletes.athlete_id
AND event_results.athlete_id = athlete_stats.athlete_id
AND event_results.games_id = athlete_stats.games_id
AND athletes.athlete_id = athlete_stats.athlete_id
AND athlete_stats.team_id = teams.team_id
AND teams.team_id = teamnames_noc.team_id
AND event_results.medal = 'Gold'
GROUP BY noc_regions.noc_abbr
ORDER BY COUNT(event_results.medal) DESC, noc_regions.noc_abbr;
