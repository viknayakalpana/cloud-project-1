CREATE DATABASE cloud_storage_system;
USE cloud_storage_system;
CREATE TABLE users(user_id INT AUTO_INCREMENT PRIMARY KEY,full_name VARCHAR(100) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL,phone VARCHAR(15),password VARCHAR(255) NOT NULL,profile_image VARCHAR(255),created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
CREATE TABLE files(
    file_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    file_name VARCHAR(255),
    file_type VARCHAR(50),
    file_size VARCHAR(50),
    s3_file_url VARCHAR(500),
    upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(user_id)
    REFERENCES users(user_id)
);
CREATE TABLE shared_files(
    share_id INT AUTO_INCREMENT PRIMARY KEY,
    file_id INT,
    shared_with_email VARCHAR(100),
    shared_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(file_id)
    REFERENCES files(file_id)
);
CREATE TABLE activity_logs(
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    activity VARCHAR(255),
    activity_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(user_id)
    REFERENCES users(user_id)
);
SHOW TABLES;
INSERT INTO users
(full_name,email,phone,password)
VALUES
(
'nithish',
'nithish@gmail.com',
'123456789',
'PASSWORD1212'
);
INSERT INTO files
(user_id,file_name,file_type,file_size)
VALUES
(
1,
'Resume.pdf',
'PDF',
'2 MB'
);
SELECT * FROM users;
SELECT * FROM files;