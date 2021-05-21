use quan_ly_thuc_tap;
insert into project(project_name,expense,place_of_interm)
	value 	('wqeqw',2000,'Vinh'),
			('bayb’',2000,'TPHCM'),
			('dqsss’',2000,'Ha Noi'),
			('wdxxx',3000,'Da Nang');
insert into faculty(faculty_name,phone)
value 	('DIALY','0333576575'),
		('QLTN','0891231222'),
		('TTT','0900002000'),
		('rrrr','0854123421');
insert into student(student_name,faculty_id,date_of_birth,place_of_birth)
	value 	('Tung',1,'1998-05-15','Vinh'),
			('Duc',2,'1999-07-20','Japan'),
			('Nam',3,'2000-09-11','Us'),
			('Tuan',4,'2001-01-05','Us');
insert into instructor(instructor_name,salary,faculty_id)
	value 	('Khanh',3000,1),
			('Quan’',2000,1),
			('hiep’',4000,2),
			('tung',500,3);

insert into instructor_studen
	value	
		(1,2,2,'nam'),
		(2,3,2,'nam'),
		(3,1,2,'nu'),
		(1,1,2,'nu');
