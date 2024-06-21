-- USER
INSERT INTO tb_user
(user_id, user_name)
VALUES(1, 'Alice');
INSERT INTO tb_user
(user_id, user_name)
VALUES(2, 'Bob');
INSERT INTO tb_user
(user_id, user_name)
VALUES(3, 'Charlie');
INSERT INTO tb_user
(user_id, user_name)
VALUES(4, 'David');
INSERT INTO tb_user
(user_id, user_name)
VALUES(5, 'Eve');
INSERT INTO tb_user
(user_id, user_name)
VALUES(6, 'Frank');
INSERT INTO tb_user
(user_id, user_name)
VALUES(7, 'Grace');
INSERT INTO tb_user
(user_id, user_name)
VALUES(8, 'Hannah');
INSERT INTO tb_user
(user_id, user_name)
VALUES(9, 'Ivy');
INSERT INTO tb_user
(user_id, user_name)
VALUES(10, 'Jack');


-- ANIME
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(1, 'Naruto', 'A young ninja strives to be the strongest and gain recognition in his village.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(2, 'One Piece', 'A pirate adventure with a quest to find the ultimate treasure, the One Piece.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(3, 'Attack on Titan', 'Humans fight for survival against giant humanoid Titans.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(4, 'My Hero Academia', 'In a world where most people have superpowers, a boy without them still dreams of becoming a hero.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(5, 'Death Note', 'A high school student discovers a notebook with deadly powers.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(6, 'Fullmetal Alchemist: Brotherhood', 'Two brothers search for a Philosopher''s Stone after an attempt to revive their deceased mother goes wrong.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(7, 'Dragon Ball Z', 'The adventures of Goku as he defends the Earth against powerful foes.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(8, 'Sword Art Online', 'Players of a virtual reality MMORPG find themselves trapped in the game, with death in-game meaning death in real life.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(9, 'Tokyo Ghoul', 'A college student becomes a half-ghoul and must learn to navigate his new life while hiding his true identity from humans.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(10, 'Bleach', 'A teenager who can see ghosts gains the abilities of a Soul Reaper and must protect the living from evil spirits.');
INSERT INTO tb_anime
(anime_id, anime_name, anime_description)
VALUES(11, 'AnimeSemReview', 'Anime Sem Review');

-- RATING
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(1, 8, 1, 1);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(2, 9, 2, 2);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(3, 10, 3, 3);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(4, 7, 4, 4);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(5, 8, 5, 5);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(6, 9, 6, 1);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(7, 10, 7, 2);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(8, 6, 8, 3);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(9, 7, 9, 4);
INSERT INTO tb_anime_rating
(anime_rating_id, anime_rating, anime_rating_user_id, anime_rating_anime_id)
VALUES(10, 8, 10, 5);

-- REVIEW
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(1, 'Naruto is a fantastic anime with a lot of emotional depth and thrilling action scenes.', 1, 1);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(2, 'One Piece is an epic adventure that keeps getting better with each episode.', 2, 2);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(3, 'Attack on Titan is a gripping and intense anime that you just can''t stop watching.', 3, 3);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(4, 'My Hero Academia is a highly inspirational anime with great character development.', 4, 4);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(5, 'Death Note is a brilliant psychological thriller that keeps you on the edge of your seat.', 5, 5);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(6, 'Naruto has an engaging story and memorable characters.', 6, 1);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(7, 'One Piece is a masterpiece with incredible world-building and plot.', 7, 2);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(8, 'Attack on Titan offers a unique story with stunning visuals and plot twists.', 8, 3);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(9, 'My Hero Academia''s portrayal of heroism is refreshing and exciting.', 9, 4);
INSERT INTO tb_anime_review
(anime_review_id, anime_review, anime_review_user_id, anime_review_anime_id)
VALUES(10, 'Death Note is a thought-provoking anime with a well-crafted storyline.', 10, 5);

-- SEASON
INSERT INTO tb_season
(season_id, season_name, season_description, season_anime_id)
VALUES(1, 'Season 1: Naruto', 'The beginning of Naruto''s journey as a young ninja striving for recognition and strength.', 1);
INSERT INTO tb_season
(season_id, season_name, season_description, season_anime_id)
VALUES(2, 'Season 1: One Piece', 'Luffy''s adventure to become the Pirate King begins as he sets sail with his crew.', 2);
INSERT INTO tb_season
(season_id, season_name, season_description, season_anime_id)
VALUES(3, 'Season 1: Attack on Titan', 'Humanity fights for survival against giant humanoid creatures known as Titans.', 3);
INSERT INTO tb_season
(season_id, season_name, season_description, season_anime_id)
VALUES(4, 'Season 1: My Hero Academia', 'In a world where most people possess superpowers, a boy without them dreams of becoming a hero.', 4);
INSERT INTO tb_season
(season_id, season_name, season_description, season_anime_id)
VALUES(5, 'Season 1: Death Note', 'A high school student gains the ability to kill anyone whose name he writes in a mysterious notebook.', 5);

-- EPISODE
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(1, 'Episode 1: Enter Naruto Uzumaki!', 'Naruto graduates from the Ninja Academy and embarks on his first mission.', 1);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(2, 'Episode 2: The Hokage''s Instructions', 'Naruto receives guidance from the Third Hokage on his ninja path.', 1);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(3, 'Episode 3: Sasuke and Sakura: Friends or Foes?', 'Team 7 faces their first challenge together as they encounter rival ninjas.', 1);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(4, 'Episode 4: The Hidden Leaf Village', 'Naruto explores the Hidden Leaf Village and learns about its history.', 1);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(5, 'Episode 5: Mission: Protect the Bridge!', 'Team 7 undertakes a dangerous mission to protect a bridge builder from bandits.', 1);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(6, 'Episode 1: I''m Luffy! The Man Who''s Gonna Be King of the Pirates!', 'Luffy sets sail on his journey to find the legendary One Piece treasure.', 2);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(7, 'Episode 2: Enter Zoro! The Pirate Hunter!', 'Luffy recruits swordsman Roronoa Zoro to join his crew.', 2);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(8, 'Episode 3: Usopp, the Man of Many Lies!', 'The crew encounters the skilled liar Usopp and faces a new challenge.', 2);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(9, 'Episode 4: The Great Captain Usopp!', 'Usopp proves his worth as a pirate and defends his friends with courage.', 2);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(10, 'Episode 5: Fear, Mysterious Power! Pirate Clown Captain Buggy!', 'The Straw Hat Pirates face off against the dangerous Pirate Clown Captain Buggy.', 2);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(11, 'Episode 1: To You, in 2000 Years: The Fall of Shiganshina, Part 1', 'The Titans breach Wall Maria, leading to humanity''s darkest hour.', 3);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(12, 'Episode 2: That Day: The Fall of Shiganshina, Part 2', 'Eren Yeager witnesses the horrifying truth about the Titans and vows revenge.', 3);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(13, 'Episode 3: A Dim Light Amid Despair: Humanity''s Comeback, Part 1', 'The survivors of Shiganshina District regroup and plan a counterattack.', 3);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(14, 'Episode 4: The Night of the Closing Ceremony: Humanity''s Comeback, Part 2', 'Humanity prepares for a daring operation to reclaim Wall Maria.', 3);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(15, 'Episode 5: First Battle: The Struggle for Trost, Part 1', 'Eren joins the front lines in the battle to reclaim Trost District from the Titans.', 3);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(16, 'Episode 1: Izuku Midoriya: Origin', 'A Quirkless boy named Izuku Midoriya dreams of becoming a hero like his idol.', 4);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(17, 'Episode 2: What It Takes to Be a Hero', 'Izuku begins his training at U.A. High School and faces challenges alongside his classmates.', 4);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(18, 'Episode 3: Roaring Muscles', 'The students of Class 1-A showcase their Quirks during a practical exam.', 4);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(19, 'Episode 4: Start Line', 'The U.A. students compete in the annual Sports Festival to showcase their abilities.', 4);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(20, 'Episode 5: What I Can Do for Now', 'Izuku faces a critical decision as he prepares for his first real hero mission.', 4);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(21, 'Episode 1: Rebirth', 'Light Yagami discovers the Death Note and embarks on a deadly quest for justice.', 5);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(22, 'Episode 2: Confrontation', 'Light faces off against the mysterious detective known only as L.', 5);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(23, 'Episode 3: Dealings', 'L and Light engage in a psychological battle of wits as the Death Note''s power grows.', 5);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(24, 'Episode 4: Pursuit', 'The investigation intensifies as L closes in on Kira''s true identity.', 5);
INSERT INTO tb_episode
(episode_id, episode_name, episode_description, episode_season_id)
VALUES(25, 'Episode 5: Tactics', 'Light devises a series of elaborate schemes to evade capture and maintain his secret.', 5);

