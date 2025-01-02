#Drop, create, and use schema
DROP SCHEMA IF EXISTS GameLibrary;
CREATE SCHEMA IF NOT EXISTS GameLibrary;
USE GameLibrary;

#create tables
CREATE TABLE IF NOT EXISTS Users (  
    user_id INT,
    username varchar (20),
    email varchar(50),
    DOB DATE,
    region varchar (30),
    registration_date DATE,
    primary key (user_id)
);
CREATE TABLE IF NOT EXISTS Developer (
    developer_id INT,
    developer varchar(30),
    developer_website varchar(50),
    primary key (developer_id)
);
CREATE TABLE IF NOT EXISTS Publisher (       
    publisher_id INT,
    publisher varchar(30),
    publisher_website varchar(50),
    primary key (publisher_id)
);
CREATE TABLE IF NOT EXISTS Game (
	game_id INT,
    title varchar (100),
    genre varchar (20),
    release_date DATE,
    platform varchar (15),
    age_rating varchar (10),
    publisher_id INT,
    primary key (game_id),
    foreign key (publisher_id) references Publisher(publisher_id)
);
CREATE TABLE IF NOT EXISTS Develops (
	game_id INT,
    developer_id INT,
    primary key (game_id, developer_id),
    foreign key (game_id) references Game(game_id),
    foreign key (developer_id) references Developer(developer_id)
);
CREATE TABLE IF NOT EXISTS PlayerCount (
	stat_id INT,
    active_players INT,
    peak_players INT,
    game_id INT,
    primary key (stat_id),
    foreign key (game_id) references Game(game_id)
);

CREATE TABLE IF NOT EXISTS Reviews (
	review_id INT,
    review_text varchar(500),
    review_sentiment varchar(15),
    rating INT,
    review_date DATE,
    user_id INT,
    game_id INT,
    primary key (review_id),
    foreign key (user_id) references Users(user_id),
    foreign key (game_id) references Game(game_id)
);

#insert user data ---------------------------------------------------------------------------------------
INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('1', 'john_doe', 'john.doe@example.com', '1990-01-15', 'North America', '2024-01-01');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('2', 'jane_smith', 'jane.smith@example.com', '1995-06-23', 'Europe', '2024-01-05');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('3', 'alex_wong', 'alex.wong@example.com', '1988-11-12', 'Asia', '2024-01-07');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('4', 'maria_garcia', 'maria.garcia@example.com', '1992-03-10', 'South America', '2024-01-10');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('5', 'sam_johnson', 'sam.johnson@example.com', '1985-09-05', 'Australia', '2024-01-15');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('6', 'linda_lee', 'linda.lee@example.com', '2000-12-01', 'Asia', '2024-01-20');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('7', 'mike_brown', 'mike.brown@example.com', '1998-04-25', 'North America', '2024-01-22');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('8', 'emma_clark', 'emma.clark@example.com', '1993-08-17', 'Europe', '2024-01-25');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('9', 'will_taylor', 'will.taylor@example.com', '1991-02-15', 'Africa', '2024-01-30');

INSERT INTO Users (`user_id`, `username`, `email`, `DOB`, `region`, `registration_date`) 
VALUES ('10', 'sophia_king', 'sophia.king@example.com', '1996-07-04', 'North America', '2024-02-01');


#insert publisher data -----------------------------------------------------------------------------------------------
INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('1', 'ConcernedApe', 'https://www.stardewvalley.net/author/concernedape/');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('2', 'CD Projekt', 'https://www.cdprojekt.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('3', 'Xbox Game Studios', 'https://www.xbox.com/en-US/xbox-game-studios');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('4', 'Rockstar Games', 'https://www.rockstargames.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('5', 'Bandai Namco Entertainment', 'https://www.bandainamcoent.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('6', 'Epic Games', 'https://www.epicgames.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('7', 'Blizzard Entertainment', 'https://www.blizzard.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('8', 'Microsoft Studios', 'https://www.microsoft.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('9', 'Sony Interactive Entertainment', 'https://www.playstation.com');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('10', 'Bethesda Softworks', 'https://bethesda.net/en/dashboard');

INSERT INTO Publisher (`publisher_id`, `publisher`, `publisher_website`) 
VALUES ('11', 'Psyonix', 'https://www.psyonix.com');

#insert game data (INCOMPLETE) ------------------------------------------------------------------------------
INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('1', 'Stardew Valley', 'Farm Life Sim', '2016-02-26', 'PC', 'E10+', '1');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('2', 'The Witcher 3: Wild Hunt', 'Action RPG', '2015-05-19', 'All', 'M', '2');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('3', 'Minecraft', 'Sandbox', '2011-11-18', 'All', 'E10+', '3');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('4', 'Grand Theft Auto V', 'Action-Adventure', '2013-09-17', 'All', 'M', '4');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('5', 'Elden Ring', 'Action RPG', '2022-02-25', 'All', 'M', '5');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('6', 'Fortnite', 'Battle Royale', '2017-07-25', 'All', 'T', '6');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('7', 'Cyberpunk 2077', 'Action RPG', '2020-12-10', 'All', 'M', '2');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('8', 'Overwatch 2', 'Hero Shooter', '2022-10-04', 'All', 'T', '7');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('9', 'Rocket League', 'Sports', '2015-07-07', 'All', 'PEGI 3', '11');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('10', 'Red Dead Redemption 2', 'Action-Adventure', '2018-10-26', 'All', 'M', '4');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('11', 'God of War', 'Action-Adventure', '2018-04-20', 'Playstation', 'M', '9');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('12', 'The Last of Us Part II', 'Action-Adventure', '2020-06-19', 'Playstation', 'M', '9');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('13', 'The Last of Us', 'Action-Adventure', '2013-06-14', 'Playstation', 'M', '9');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('14', 'Fallout 4', 'Action Role-playing', '2015-11-10', 'All', 'M', '10');

INSERT INTO Game (`game_id`, `title`, `genre`, `release_date`, `platform`, `age_rating`, `publisher_id`) 
VALUES ('15', 'The Elder Scrolls V: Skyrim', 'Action Role-playing', '2011-11-11', 'All', 'M', '10');


#insert developer data ------------------------------------------------------------------------
INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('1', 'ConcernedApe', 'https://www.stardewvalley.net/author/concernedape/');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('2', 'CD Projekt Red', 'https://www.cdprojektred.com/en');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('3', 'Mojang Studios', 'https://www.minecraft.net');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('4', 'Rockstar North', 'https://www.rockstarnorth.com');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('5', 'FromSoftware', 'https://www.fromsoftware.jp/ww/');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('6', 'Epic Games', 'https://www.epicgames.com');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('7', 'Blizzard Entertainment', 'https://www.blizzard.com');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('8', 'Rockstar Games', 'https://www.rockstargames.com');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('9', 'Santa Monica Studio', 'https://support.sms.playstation.com/hc/en-us');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('10', 'Naughty Dog', 'https://www.naughtydog.com');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`) 
VALUES ('11', 'Bethesda Game Studios', 'https://bethesda.net/en/dashboard');

INSERT INTO Developer (`developer_id`, `developer`, `developer_website`)
VALUES ('12', 'Psyonix', 'https://www.psyonix.com');


#insert develops relation data -----------------------------------------------------------------------
INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('1', '1');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('2', '2');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('3', '3');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('4', '4');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('5', '5');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('6', '6');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('7', '2');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('8', '7');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('9', '12');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('10', '8');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('11', '9');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('12', '10');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('13', '10');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('14', '11');

INSERT INTO Develops (`game_id`, `developer_id`) 
VALUES ('15', '11');


#insert review data ----------------------------------------------------------------------------------
INSERT INTO Reviews (`review_id`, `review_text`, `review_sentiment`, `rating`, `review_date`, `user_id`, `game_id`) 
VALUES 
('1', 'This game exceeded my expectations. Truly enjoyable!', 'very good', '5', '2024-01-15', '1', '1'),
('2', 'I did not enjoy this game at all. Poor experience.', 'very bad', '1', '2024-02-01', '2', '2'),
('3', 'The game is decent, nothing special, but not terrible.', 'okay', '3', '2024-02-10', '3', '3'),
('4', 'Fantastic game! I had so much fun playing it.', 'very good', '5', '2024-03-05', '4', '4'),
('5', 'Not the best game, but it has some good moments.', 'bad', '2', '2024-03-20', '5', '5'),
('6', 'Solid gameplay and decent mechanics. I enjoyed it.', 'good', '4', '2024-04-01', '6', '6'),
('7', 'The graphics were terrible and the gameplay was worse.', 'very bad', '1', '2024-04-15', '7', '7'),
('8', 'Pretty fun overall, with minor flaws here and there.', 'good', '4', '2024-04-20', '8', '8'),
('9', 'I absolutely loved this game. Highly recommend it!', 'very good', '5', '2024-05-01', '9', '9'),
('10', 'Boring and repetitive. Couldn’t keep my interest.', 'bad', '2', '2024-05-15', '10', '10'),
('11', 'Average game overall, worth playing if discounted.', 'okay', '3', '2024-05-25', '1', '2'),
('12', 'This game blew me away. It’s a masterpiece!', 'very good', '5', '2024-06-10', '2', '3'),
('13', 'The storyline was weak, and I got bored quickly.', 'bad', '2', '2024-06-20', '3', '4'),
('14', 'A pretty good experience. I would play this again.', 'good', '4', '2024-07-01', '4', '5'),
('15', 'One of the worst games I have played this year.', 'very bad', '1', '2024-07-15', '5', '6'),
('16', 'Fun to play with friends, but lacks replay value.', 'okay', '3', '2024-08-01', '6', '7'),
('17', 'Amazing! I’ll definitely be recommending this to friends.', 'very good', '5', '2024-08-15', '7', '8'),
('18', 'The gameplay was glitchy, but the story saved it.', 'okay', '3', '2024-08-25', '8', '9'),
('19', 'A good time overall, though not perfect by any means.', 'good', '4', '2024-09-05', '9', '10'),
('20', 'Unplayable at launch. I wish I could get a refund.', 'very bad', '1', '2024-09-15', '10', '1');

INSERT INTO Reviews (`review_id`, `review_text`, `review_sentiment`, `rating`, `review_date`, `user_id`, `game_id`) 
VALUES 
('21', 'This game is absolutely amazing! A must-play.', 'very good', '5', '2024-09-25', '1', '11'),
('22', 'The mechanics feel clunky, and it’s not very fun.', 'bad', '2', '2024-10-05', '2', '12'),
('23', 'A solid experience with great replayability.', 'good', '4', '2024-10-10', '3', '13'),
('24', 'It’s okay, but I expected more from this game.', 'okay', '3', '2024-10-15', '4', '14'),
('25', 'A truly disappointing experience. Do not recommend.', 'very bad', '1', '2024-10-20', '5', '15'),
('26', 'I had fun with this game, especially with friends.', 'good', '4', '2024-10-25', '6', '11'),
('27', 'The visuals are stunning, but the gameplay is lacking.', 'okay', '3', '2024-11-01', '7', '12'),
('28', 'Terrible execution. I couldn’t even finish it.', 'very bad', '1', '2024-11-05', '8', '13'),
('29', 'One of the best games I’ve played recently. Fantastic!', 'very good', '5', '2024-11-10', '9', '14'),
('30', 'Average at best. Fun for a while, but gets boring.', 'okay', '3', '2024-11-15', '10', '15'),
('31', 'This game is truly a masterpiece. I loved every second.', 'very good', '5', '2024-11-20', '1', '12'),
('32', 'Not worth the money. Way too many bugs.', 'very bad', '1', '2024-11-25', '2', '11'),
('33', 'It’s a good game, but not groundbreaking.', 'good', '4', '2024-12-01', '3', '14'),
('34', 'This was a fun ride from start to finish!', 'very good', '5', '2024-12-05', '4', '13'),
('35', 'Way too repetitive. I got bored quickly.', 'bad', '2', '2024-12-10', '5', '15'),
('36', 'An okay game with a few standout moments.', 'okay', '3', '2024-12-15', '6', '11'),
('37', 'A total mess. Not worth your time or money.', 'very bad', '1', '2024-12-20', '7', '12'),
('38', 'I can’t stop playing this game. It’s so good!', 'very good', '5', '2024-12-25', '8', '13'),
('39', 'Enjoyable, but lacking polish in some areas.', 'good', '4', '2024-12-30', '9', '14'),
('40', 'I regret buying this game. It’s just bad.', 'very bad', '1', '2025-01-05', '10', '15');

INSERT INTO Reviews (`review_id`, `review_text`, `review_sentiment`, `rating`, `review_date`, `user_id`, `game_id`) 
VALUES 
('41', 'A fun game, though it could use some quality of life improvements.', 'good', '4', '2024-01-10', '1', '6'),
('42', 'The story is amazing, but the gameplay is a bit tedious at times.', 'okay', '3', '2024-01-15', '2', '7'),
('43', 'An absolute masterpiece. The best game I’ve played in years!', 'very good', '5', '2024-01-20', '3', '8'),
('44', 'This game is very underwhelming. It did not meet my expectations.', 'bad', '2', '2024-01-25', '4', '9'),
('45', 'Had a blast playing with friends. Definitely worth the price.', 'good', '4', '2024-02-01', '5', '2'),
('46', 'Very disappointing. The gameplay feels outdated and boring.', 'very bad', '1', '2023-02-05', '6', '1'),
('47', 'I love the world-building, but the combat system needs work.', 'okay', '3', '2022-02-10', '7', '2'),
('48', 'Fantastic. A great experience, but not perfect.', 'good', '4', '2021-02-15', '8', '3'),
('49', 'Incredible visuals, but the gameplay falls flat.', 'okay', '3', '2023-02-20', '9', '4'),
('50', 'A solid game overall, but there are better options out there.', 'good', '4', '2022-02-25', '10', '5'),
('51', 'Terrible game. The mechanics don’t work properly.', 'very bad', '1', '2020-03-01', '1', '15'),
('52', 'Good fun, but gets repetitive quickly.', 'okay', '3', '2024-03-05', '2', '14'),
('53', 'I couldn’t stop playing. Highly recommend it.', 'very good', '5', '2023-03-10', '3', '13'),
('54', 'The game has a lot of potential, but it feels unfinished.', 'bad', '2', '2021-03-15', '4', '12'),
('55', 'Best game I’ve played in a while. I loved it!', 'very good', '5', '2021-03-20', '5', '11'),
('56', 'A bit too buggy, but I enjoyed it overall.', 'okay', '3', '2022-03-25', '6', '11'),
('57', 'Not worth the money. The game is too short and lacking depth.', 'very bad', '1', '2022-03-30', '7', '10'),
('58', 'Great game with some flaws, but definitely fun.', 'good', '4', '2023-04-01', '8', '1'),
('59', 'The controls are frustrating and it’s not fun to play.', 'bad', '2', '2024-04-05', '9', '5'),
('60', 'A truly unforgettable experience. I would play it again.', 'very good', '5', '2022-04-10', '10', '8');




#insert playercount data -----------------------------------------------------------------------------
INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('1', '57383', '236614', '1');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('2', '17029', '103329', '2');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('3', '962587', '185700000', '3');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('4', '76940', '360761', '4');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('5', '30524', '952523', '5');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('6', '2093636', '14343880', '6');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('7', '40932', '830387', '7');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('8', '21658', '75361', '8');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('9', '18925', '146902', '9');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('10', '27837', '77335', '10');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('11', '2394', '73529', '11');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('12', '20563', '174294', '12');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('13', '2330', '468261', '13');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('14', '13412', '471955', '14');

INSERT INTO PlayerCount (`stat_id`,`active_players`,`peak_players`,`game_id`)
VALUES ('15', '26227', '169777', '15');


# Beginning of queries
#	Query 1: Retrieve games of a certain genre
SELECT title AS Title, genre AS Genre 
FROM gamelibrary.Game
WHERE genre = 'Action-Adventure';

#	Query 2: List all users and their reviews for a given game
SELECT title AS Title, username AS Username, review_text as Review, rating AS Rating
FROM gamelibrary.users as u
JOIN gamelibrary.reviews AS r ON u.user_id = r.user_id
JOIN gamelibrary.game AS g ON g.game_id = r.game_id
WHERE r.game_id = (SELECT game_id FROM game WHERE title = 'Cyberpunk 2077');

#	Query 3: Sory videogames by highest active player count
SELECT title AS Title, active_players AS Active_Players
FROM gamelibrary.game AS g
JOIN gamelibrary.playercount AS pc ON g.game_id = pc.game_id
ORDER BY active_players DESC;

#	Query 4: Show games released in a certian year
SELECT title, release_date
from gamelibrary.game
WHERE release_date >= '2013-01-01' AND release_date <= '2013-12-31'
ORDER BY title;

#	Query 5: List genre by average review rating within genre to find most popular genre
SELECT genre, AVG(rating) AS avg_review_score
FROM gamelibrary.game AS g
JOIN gamelibrary.reviews AS r ON g.game_id = r.game_id
GROUP BY g.genre
ORDER BY avg_review_score DESC;

#	Query 6: List all of a user's reviews
SELECT username as Username, review_text as Review, rating as Rating
FROM gamelibrary.reviews as r
JOIN gamelibrary.users as u on u.user_id = r.user_id
WHERE username = 'john_doe';

#	Query 7: Sort games by peak number of players
SELECT title as Title, peak_players AS Peak_Players
FROM gamelibrary.game as g
JOIN gamelibrary.playercount as pc ON pc.game_id = g.game_id
ORDER BY peak_players DESC;

#	Query 8: Search for games released by a certain developer
SELECT title as Title, developer as Developer
FROM gamelibrary.game as g
JOIN gamelibrary.develops ON develops.game_id = g.game_id
JOIN gamelibrary.developer as d on d.developer_id = develops.developer_id
WHERE developer = 'Naughty Dog';

#	Query 9: Search for games published by a specific publisher
SELECT title as Title, publisher as Publisher
FROM gamelibrary.game as g
JOIN gamelibrary.publisher AS p ON p.publisher_id = g.publisher_id
WHERE publisher = 'Bethesda Softworks';

#	Query 10: Count the number of reviews for each game
SELECT title as Title, COUNT(review_id) AS Review_Count
FROM gamelibrary.game AS g
JOIN gamelibrary.reviews AS r ON g.game_id = r.game_id
GROUP BY title
ORDER BY Review_Count DESC;

#	Query 11: Sort games by highest average rating
SELECT title as Title, AVG(rating) as Avg_Rating
FROM gamelibrary.game as g
JOIN gamelibrary.reviews as r ON r.game_id = g.game_id
GROUP BY title
ORDER BY Avg_Rating DESC;

#	Query 12: Find the most recent game released by a specific developer
SELECT title as Title, release_date as Release_Date
FROM gamelibrary.game AS g
JOIN gamelibrary.develops ON g.game_id = develops.game_id
JOIN gamelibrary.developer AS d ON develops.developer_id = d.developer_id
WHERE d.developer = 'Bethesda Game Studios'
ORDER BY release_date DESC
LIMIT 1;

#	Query 13: List all games available on all platforms
SELECT title AS Title, platform AS Platform
FROM gamelibrary.game as g
WHERE platform = 'All'
ORDER BY title;

#	Query 14: List average game rating by developer
SELECT developer AS Developer, AVG(rating) AS Average_Rating
FROM gamelibrary.developer as d
JOIN gamelibrary.develops ON d.developer_id = develops.developer_id
JOIN gamelibrary.game as g ON develops.game_id = g.game_id
JOIN gamelibrary.reviews AS r ON g.game_id = r.game_id
GROUP BY developer
ORDER BY Average_Rating DESC;

#	Query 15: List games that perform better than genre average
SELECT 
    g.title AS Title, 
    g.genre AS Genre, 
    AVG(r.rating) AS Avg_Rating,
    (SELECT AVG(r2.rating) 
     FROM gamelibrary.reviews AS r2 
     JOIN gamelibrary.game AS g2 ON g2.game_id = r2.game_id
     WHERE g2.genre = g.genre) AS Genre_Avg_Rating
FROM gamelibrary.game AS g
JOIN gamelibrary.reviews AS r ON g.game_id = r.game_id
GROUP BY g.title, g.genre
HAVING AVG(r.rating) > (
    SELECT AVG(r2.rating)
    FROM gamelibrary.reviews AS r2
    JOIN gamelibrary.game AS g2 ON g2.game_id = r2.game_id
    WHERE g2.genre = g.genre
    GROUP BY g2.genre
)
ORDER BY AVG(r.rating) DESC;
