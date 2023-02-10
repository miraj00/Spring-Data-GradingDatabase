-- Copy-paste and run this code in MySQL Workbench to set up the database ( db_grading_project )
-- table and sample data for this application.
CREATE DATABASE db_grade;
USE db_grade;
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
`id` bigint NOT NULL AUTO_INCREMENT,
`name` varchar(255) DEFAULT NULL,
`type` varchar(255) DEFAULT NULL,
`score` bigint DEFAULT NULL,
`total` bigint DEFAULT NULL,
 PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `grade` (name, `type`, score, total) VALUES 
('African Countries Worksheet', 'Assignment', 10.0, 10.0),
('Central Asian Languages Quiz', 'Quiz', 2.0, 10.0),
('Mid-Term Exam', 'Exam', 43.0, 50.0),
('Dog Breeds', 'Quiz', 11.0, 10.0);
