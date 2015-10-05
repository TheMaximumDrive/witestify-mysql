CREATE database witestify;
USE witestify;

CREATE TABLE users(
   `uid` int(11) PRIMARY KEY AUTO_INCREMENT,
   `unique_id` varchar(23) NOT NULL UNIQUE,
   `name` varchar(50) NOT NULL UNIQUE,
   `email` varchar(100) NOT NULL UNIQUE,
   `encrypted_password` varchar(100)NOT NULL,
   `salt` varchar(10) NOT NULL,
   `created_at` DATETIME,
   `updated_at` DATETIME NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

INSERT INTO `users` (`uid`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`) VALUES 
	(1, '55f0add094ab12.25727662', 'user', 'abc@abc.at', 'MKc4SqWEhCs+HiqU8KyghEchiw4xMTNhZjk3ODYz', '113af97863', '2015-10-05 20:20:09', NULL),
	(2, '55f429e1b5c3e8.95290045', 'user2', 'a@b.com', 'LkFaY3lJb43BFlGLr0YmHyAeQb9lYWQ4MjFhYTdl', 'ead821aa7e', '2015-10-05 20:20:09', NULL);

CREATE TABLE videos(
	uid int(11) PRIMARY KEY AUTO_INCREMENT,
	user varchar(50) NOT NULL,
	title varchar(100) NOT NULL,
	location varchar(200) NOT NULL,
	timestamp TIMESTAMP DEFAULT 0, 
	duration SMALLINT NOT NULL, 
	keyframe varchar(200) NOT NULL,
	url varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;
