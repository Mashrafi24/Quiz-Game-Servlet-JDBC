-- ============================================================
--  Bogura District Upazila Quiz  -  Database Schema & Seed Data
--  Covers: Bogra Sadar, Shibganj, Sherpur, Sonatola, Dhunat,
--          Gabtali, Sariakandi, Adamdighi, Kahaloo, Dupchanchia,
--          Nandigram, Shajahanpur
--  Topics: Crops, Geology, Educational Institutions
-- ============================================================

CREATE DATABASE IF NOT EXISTS bogura_quiz_db;
USE bogura_quiz_db;

-- ------------------------------------------------------------
-- Table: questions
-- ------------------------------------------------------------
DROP TABLE IF EXISTS questions;
CREATE TABLE questions (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    question_text VARCHAR(500) NOT NULL,
    option_a      VARCHAR(200) NOT NULL,
    option_b      VARCHAR(200) NOT NULL,
    option_c      VARCHAR(200) NOT NULL,
    option_d      VARCHAR(200) NOT NULL,
    correct_option CHAR(1) NOT NULL,   -- 'A', 'B', 'C', or 'D'
    category      VARCHAR(50) NOT NULL -- 'Crops', 'Geology', 'Education'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------
-- Table: results  (name + score saved after each quiz attempt)
-- ------------------------------------------------------------
DROP TABLE IF EXISTS results;
CREATE TABLE results (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    player_name   VARCHAR(100) NOT NULL,
    score         INT NOT NULL,
    total_questions INT NOT NULL DEFAULT 10,
    attempt_time  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------
-- Seed: 10 MCQs on Bogura District upazilas
-- (facts sourced from Banglapedia / Wikipedia)
-- ------------------------------------------------------------
INSERT INTO questions
(question_text, option_a, option_b, option_c, option_d, correct_option, category) VALUES

('How many upazilas does Bogura district consist of?',
 '10', '11', '12', '14', 'C', 'Geology'),

('Bogura district is part of which administrative division of Bangladesh?',
 'Dhaka', 'Rangpur', 'Rajshahi', 'Khulna', 'C', 'Geology'),

('Mahasthangarh, the ruins of the ancient Pundravardhana capital, lies in which upazila of Bogura?',
 'Shibganj', 'Sherpur', 'Kahaloo', 'Gabtali', 'A', 'Geology'),

('Which river flows through Shibganj upazila, near the Mahasthangarh archaeological site?',
 'Padma', 'Karatoya', 'Jamuna', 'Teesta', 'B', 'Geology'),

('In 1983, Bogra district was split in two, forming Bogra district and which other district?',
 'Naogaon', 'Joypurhat', 'Gaibandha', 'Natore', 'B', 'Geology'),

('Which of these is NOT among the main crops of Shibganj upazila?',
 'Betel leaf', 'Ginger', 'Turmeric', 'Tea', 'D', 'Crops'),

('Bogra Sadar upazila''s main exports are potato and which fruit?',
 'Mango', 'Banana', 'Litchi', 'Jackfruit', 'B', 'Crops'),

('Along with paddy, rice, and fish, which product is a main export of Dhupchanchia upazila?',
 'Jute', 'Milk', 'Cotton', 'Tobacco', 'B', 'Crops'),

('Government Azizul Haque College, one of the most noted colleges of North Bengal, was established in Bogura in which year?',
 '1921', '1939', '1954', '1968', 'B', 'Education'),

('Government Azizul Haque College was named after Sir Azizul Haque, who served as the Vice-Chancellor of which university?',
 'Dhaka University', 'Rajshahi University', 'Calcutta University', 'Aligarh University', 'C', 'Education');
