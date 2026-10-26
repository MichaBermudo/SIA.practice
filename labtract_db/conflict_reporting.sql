Labtract: Conflict and Reporting Support

USE labtract_db

Departments
CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(255) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

Courses
CREATE TABLE courses (
    courses_id INT PRIMARY KEY,
    courses_name VARCHAR(255) NOT NULL,
    department_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

Conflict_logs
CREATE TABLE conflict_logs (
    conflict_id INT PRIMARY KEY,
    booking_id INT NOT NULL,
    conflict_booking_id INT NOT NULL,
    laboratory_id INT NOT NULL,
    conflict_type VARCHAR(100) NOT NULL,
    description TEXT,
    conflict_status ENUM('detected', 'reviewed', 'resolved', 'dismissed') DEFAULT 'detected',
    detected_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at DATETIME NULL
);

Notifications
CREATE TABLE notifications (
    notification_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    message TEXT,
    notification_type VARCHAR(100) NOT NULL,
    booking_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);