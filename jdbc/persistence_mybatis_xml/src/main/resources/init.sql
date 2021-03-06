DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS tutors;
DROP TABLE IF EXISTS courses;

-- 地址
CREATE TABLE `addresses` (
	`ADDR_ID` INT(11) NOT NULL AUTO_INCREMENT,
	`STREET` VARCHAR(50) NULL DEFAULT NULL,
	`CITY` VARCHAR(50) NULL DEFAULT NULL,
	`STATE` VARCHAR(50) NULL DEFAULT NULL,
	`ZIP` VARCHAR(10) NULL DEFAULT NULL,
	`COUNTRY` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`ADDR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into addresses values (1, '翠屏西路','北京','通州','100010','中国');

-- 学生
CREATE TABLE `students` (
	`STUD_ID` INT(11) NOT NULL AUTO_INCREMENT,
	`NAME` VARCHAR(50) NOT NULL,
	`EMAIL` VARCHAR(50) NOT NULL,
	`DOB` DATE NULL DEFAULT NULL,
	`PHONE` VARCHAR(15) NULL DEFAULT NULL,
	`ADDR_ID` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`STUD_ID`),
	INDEX `FK_students_addresses` (`ADDR_ID`),
	CONSTRAINT `FK_students_addresses` FOREIGN KEY (`ADDR_ID`) REFERENCES `addresses` (`ADDR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Sample Data for the students table */
insert into students(stud_id,name,email,dob,phone,addr_id)
values (1,'Student1','student1@gmail.com','1983-06-25', NULL, 1);

insert into students(stud_id,name,email,dob,phone,addr_id)
values (2,'Student2','student2@gmail.com','1983-06-25', NULL, 1);

-- 导师
CREATE TABLE `tutors` (
	`TUTOR_ID` INT(11) NULL DEFAULT NULL AUTO_INCREMENT,
	`NAME` VARCHAR(50) NULL DEFAULT NULL,
	`EMAIL` VARCHAR(50) NULL DEFAULT NULL,
	`PHONE` VARCHAR(50) NULL DEFAULT NULL,
	`ADDR_ID` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`TUTOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into tutors (NAME,EMAIL,PHONE,ADDR_ID) values ('John', 'john@gmail.com', '123-456-7890', 1);
insert into tutors (NAME,EMAIL,PHONE,ADDR_ID) values ('Ying', 'ying@gmail.com', '111-222-3333', 1);

-- 课程
CREATE TABLE `courses` (
	`COURSE_ID` INT(11) NULL DEFAULT NULL AUTO_INCREMENT,
	`NAME` VARCHAR(50) NULL DEFAULT NULL,
	`DESCRIPTION` VARCHAR(50) NULL DEFAULT NULL,
	`START_DATE` DATE NULL DEFAULT NULL,
	`END_DATE` DATE NULL DEFAULT NULL,
	`TUTOR_ID` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into courses (NAME,DESCRIPTION,START_DATE,END_DATE,TUTOR_ID) values ('JavaSE', 'Java SE', '2013-01-10', '2013-02-10', 1);
insert into courses (NAME,DESCRIPTION,START_DATE,END_DATE,TUTOR_ID) values ('Java EE 6', 'Java EE 6', '2013-01-10', '2013-02-10', 2);
insert into courses (NAME,DESCRIPTION,START_DATE,END_DATE,TUTOR_ID) values ('MyBatis', 'MyBatis', '2013-01-10', '2013-02-10', 2);
