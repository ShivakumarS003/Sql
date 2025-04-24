
CREATE TABLE Ipl_pointstable (team_id INT ,team_name VARCHAR(100),matches_played INT,matches_won INT,matches_lost INT,
    matches_drawn INT,points INT, net_run_rate double, home_ground VARCHAR(100),captain_name VARCHAR(100));
    
    ALTER TABLE Ipl_pointstable
ADD COLUMN coach_name VARCHAR(100),
ADD COLUMN last_season_rank INT,
ADD COLUMN team_owner VARCHAR(100),
ADD COLUMN qualification_status VARCHAR(20);

ALTER TABLE Ipl_pointstable
DROP COLUMN qualification_status;

ALTER TABLE Ipl_pointstable RENAME COLUMN team_name TO teamName;
ALTER TABLE Ipl_pointstable RENAME COLUMN matches_played TO matchesPlayed;
ALTER TABLE Ipl_pointstable RENAME COLUMN matches_won TO matchesWon;
ALTER TABLE Ipl_pointstable RENAME COLUMN matches_lost TO matchesLost;

ALTER TABLE Ipl_pointstable MODIFY COLUMN net_run_rate DECIMAL(6, 3);
ALTER TABLE Ipl_pointstable MODIFY COLUMN teamName VARCHAR(120);
ALTER TABLE Ipl_pointstable MODIFY COLUMN home_ground VARCHAR(150);
ALTER TABLE Ipl_pointstable MODIFY COLUMN captain_name VARCHAR(120);

