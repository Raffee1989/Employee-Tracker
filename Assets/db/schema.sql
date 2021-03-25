DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NOT NULL,
  `salary` DECIMAL, 
  `department_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`department_id`) REFERENCES department (`id`)
);

CREATE TABLE employee (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `role_id` INT,
  `manager_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`role_id`) REFERENCES roles (`id`),
  FOREIGN KEY (`manager_id`) REFERENCES employee (`id`)
);

INSERT INTO `department` (name)
	VALUES ('Operations'), ('Human Resources'), ('Sales'), ('Accounting and Finance'), ('Purchasing'), ('Production');
    
INSERT INTO `roles` (title, salary, department_id)
	VALUES ('Salesperson', 50000, 3), ('HR Manager', 77000, 2), ('Accountant', 45000, 6);
    
INSERT INTO `employee` (first_name, last_name, role_id, manager_id)
	VALUES ('Abouzar', 'Raffee', 1, null), ('Zac', 'Warner', 2, 1), ('Sarness', 'Prasad', 3, 1);
    
    
    