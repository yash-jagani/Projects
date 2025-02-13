CREATE DATABASE IF NOT EXISTS blog_db;

USE blog_db;

CREATE TABLE IF NOT EXISTS blog_table (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	text TEXT NOT NULL,
	date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);

INSERT INTO blog_table (title, text, date)
VALUES
	('Title 1', 'Sample text', '2025-02-13 00:00:00'),
	('Title 2', 'Sample text', '2025-02-13 00:00:00'),
	('Title 3', 'Sample text', '2025-02-13 00:00:00'),
	('Title 4', 'Sample text', '2025-02-13 00:00:00'),
	('Title 5', 'Sample text', '2025-02-13 00:00:00');
