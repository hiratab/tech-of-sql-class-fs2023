CREATE TABLE `tb_anime` (
  `anime_id` int NOT NULL AUTO_INCREMENT,
  `anime_name` varchar(200) DEFAULT NULL,
  `anime_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`anime_id`)
);

CREATE TABLE `tb_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `tb_anime_rating` (
  `anime_rating_id` int NOT NULL AUTO_INCREMENT,
  `anime_rating` int DEFAULT NULL,
  `anime_rating_user_id` int DEFAULT NULL,
  `anime_rating_anime_id` int DEFAULT NULL,
  PRIMARY KEY (`anime_rating_id`),
  KEY `anime_rating_user_id` (`anime_rating_user_id`),
  KEY `anime_rating_anime_id` (`anime_rating_anime_id`),
  CONSTRAINT `tb_anime_rating_user_fk` FOREIGN KEY (`anime_rating_user_id`) REFERENCES `tb_user` (`user_id`),
  CONSTRAINT `tb_anime_rating_anime_fk` FOREIGN KEY (`anime_rating_anime_id`) REFERENCES `tb_anime` (`anime_id`)
);

CREATE TABLE `tb_anime_review` (
  `anime_review_id` int NOT NULL AUTO_INCREMENT,
  `anime_review` varchar(500) DEFAULT NULL,
  `anime_review_user_id` int DEFAULT NULL,
  `anime_review_anime_id` int DEFAULT NULL,
  PRIMARY KEY (`anime_review_id`),
  KEY `anime_review_user_id` (`anime_review_user_id`),
  KEY `anime_review_anime_id` (`anime_review_anime_id`),
  CONSTRAINT `tb_anime_review_user_fk` FOREIGN KEY (`anime_review_user_id`) REFERENCES `tb_user` (`user_id`),
  CONSTRAINT `tb_anime_review_anime_fk` FOREIGN KEY (`anime_review_anime_id`) REFERENCES `tb_anime` (`anime_id`)
);

CREATE TABLE `tb_season` (
  `season_id` int NOT NULL AUTO_INCREMENT,
  `season_name` varchar(200) DEFAULT NULL,
  `season_description` varchar(500) DEFAULT NULL,
  `season_anime_id` int DEFAULT NULL,
  PRIMARY KEY (`season_id`),
  KEY `season_anime_id` (`season_anime_id`),
  CONSTRAINT `tb_season_anime_fk` FOREIGN KEY (`season_anime_id`) REFERENCES `tb_anime` (`anime_id`)
);

CREATE TABLE `tb_episode` (
  `episode_id` int NOT NULL AUTO_INCREMENT,
  `episode_name` varchar(200) DEFAULT NULL,
  `episode_description` varchar(500) DEFAULT NULL,
  `episode_season_id` int DEFAULT NULL,
  PRIMARY KEY (`episode_id`),
  KEY `episode_season_id` (`episode_season_id`),
  CONSTRAINT `tb_episode_season_fk` FOREIGN KEY (`episode_season_id`) REFERENCES `tb_season` (`season_id`)
);
