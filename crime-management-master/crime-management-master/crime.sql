

create table ADMIN
	( username varchar(20),
	  password varchar(10),
	  email varchar(30),
	  phone int(10)
		);

INSERT INTO `ADMIN` VALUES
('admin1','admin1','admin1@gmail.com','987654321'),
('admin2','admin2','admin2@gmail.com','987654322');

create table PETITIONER
	(	petitionerid varchar(10),
		pname varchar(20),
		page int not null,
		pgender varchar(10),
		paddr varchar(50),
		password varchar(10),
		primary key(petitionerid)
		);

INSERT INTO `PETITIONER` VALUES
('P1001','AARAV',31,'M','#3-36,8th cross,indiranagar,banglore','p1001'),
('P1002','VIVAAN',28,'M','#8,5th cross,vijaynagar,banglore','p1002'),
('P1003','DHRUV',33,'M','#333,80 ft road,sarjapur,banglore','p1003'),
('P1004','REYANSH',29,'M','#348,4th cross,hosur,banglore','p1004'),
('P1005','SANDEEP',42,'M','#108,1st 5th main road,yellachinahalli,banglore','p1005'),
('P1006','SANJAY',32,'M','#32,5th cross,yelahanka,banglore','p1006'),
('P1007','GANESH',39,'M','#9,8th cross main road,vidyaranyapura,banglore','p1007'),
('P1008','KARTHIK',41,'M','#8-43,2nd cross,girinagar,banglore','p1008'),
('P1009','AASHD',29,'M','#1,4th main road,chickpet,banglore','p1009'),
('P1010','SWATHI',51,'F','#5-70,60 ft road,sarjapur,banglore','p1010'),
('P1011','SURYA',36,'M','#3-35,7th cross,girinagar,banglore','p1011'),
('P1012','ARNAV',32,'M','#33,8th cross road,hebbal,banglore,banglore','p1012'),
('P1013','VINUTHA',30,'F','#70,9th cross,indiranagar,banglore','p1013'),
('P1014','SANJANA',45,'F','#4,3rd D main road,chickpet,banglore','p1014'),
('P1015','AMIR',30,'M','#98,2nd main road,vidyaranyapura,banglore','p1015'),
('P1016','MADHAV',28,'M','#8,10th cross,vijaynagar,banglore','p1016'),
('P1017','SAMANTHA',34,'F','#26,2nd B main road,marathahalli,banglore','p1017'),
('P1018','KRISHNA',26,'M','#33,17th cross,junnasandra,banglore','p1018'),
('P1019','ARJUN',43,'M','#46,6th cross,vijaynagar,banglore','p1019'),
('P1020','PARAM',31,'M','#16,5th main,banaswadi,banglore','p1020');

create table VICTIM
	(	vid varchar(10),
		vname varchar(20),
		vage int not null,
		vgender varchar(10),
		vaddr varchar(50),
		primary key(vid)
	);

INSERT INTO `VICTIM` VALUES
('V1001','GEETHA',29,'F','#234,9th cross,hanumanthnagar,banglore'),
('V1002','AJAY',19,'M','#32,3rd road,srinagar,banglore'),
('V1003','SANJAY',32,'M','#32,5th cross,yelahanka,banglore'),
('V1004','SHIVANI',12,'F','#108,1st D main road,marathahalli,banglore'),
('V1005','RAM',22,'M','#4,1st cross,domlur,banglore'),
('V1006','SUDIP',41,'M','#140,7th cross,jayanagar,banglore'),
('V1007','JYOTHI',18,'M','#567,7th main,btm layout,banglore'),
('V1008','GAURI',55,'F','#89,3rd block,yelahanka,banglore'),
('V1009','SANDEEP',42,'M','#108,1st 5th main road,yellachinahalli,banglore'),
('V1010','JOGENDRA',79,'M','#830,7th cross,basavangudi,banglore'),
('V1011','GEETHA',29,'F','#234,9th cross,hanumanthnagar,banglore'),
('V1012','IRFAN',39,'M','#89,4th road,banashakari,banglore'),
('V1013','VISHWAS',26,'M','#420,5th cross,yelahanka,banglore'),
('V1014','ANUSHA',22,'F','#108,1st D main road,sarjapur,banglore'),
('V1015','SWETHA',25,'F','#47,1st cross,hsr layout,banglore'),
('V1016','VINUTHA',30,'F','#70,9th cross,indiranagar,banglore'),
('V1017','ANITHA',31,'M','#46,8th road,gayatrinagar,banglore'),
('V1018','SANJAY',32,'M','#32,5th cross,yelahanka,banglore'),
('V1019','PURUSH',32,'M','#12,7th cross,yeshwanthpur,banglore'),
('V1020','RAM',22,'M','#5,2nd cross,bancolony,banglore');

create table CRIME
	(	id varchar(10),
		cdate DATE,
		ctime varchar(10),
		place varchar(20),
		petid varchar(10),
		victimid varchar(10),
		primary key(id),
		foreign key(petid) references PETITIONER(petitionerid),
		foreign key(victimid) references VICTIM(vid)	
	);

INSERT INTO `CRIME` VALUES
('C1001','2011-02-12','20:12','GIRINAGAR','P1001','V1001'),
('C1003','2000-11-25','10:20','CHICKPET','P1002','V1002'),
('C1002','2015-06-22','01:59','HOSUR','P1011','V1003'),
('C1009','2016-03-02','02:28','JUNNASANDRA','P1007','V1004'),
('C1006','2002-05-19','20:30','NAYANDHALLI','P1009','V1005'),
('C1007','2000-04-30','17:12','YELAHANKA','P1001','V1006'),
('C1008','2014-02-15','23:01','HEBBAL','P1016','V1007'),
('C1005','2012-05-06','20:12','MATHIKERE','P1001','V1008'),
('C1004','2008-02-12','01:17','SARJAPUR','P1012','V1009'),
('C1010','2007-01-18','16:47','GIRINAGAR','P1001','V1010'),
('C1011','2000-07-08','14:26','BANNERGATTA','P1004','V1011'),
('C1012','2003-02-23','20:06','GIRINAGAR','P1013','V1012'),
('C1013','2009-04-19','15:18','CHICKPET','P1005','V1013'),
('C1014','2013-12-03','18:13','HOSUR','P1010','V1014'),
('C1015','2019-01-19','10:12','GIRINAGAR','P1006','V1015'),
('C1016','2000-05-27','17:39','JUNNASANDRA','P1017','V1016'),
('C1017','2005-09-24','16:09','MARATHAHALLI','P1008','V1017'),
('C1019','2016-07-12','16:45','HOSUR','P1014','V1019'),
('C1018','2007-02-13','21.12','BELANDUR','P1020','V1018'),
('C1020','2018-09-11','04:34','CHICKPET','P1003','V1020');

create table PRISON
	(	no int,
		guardname varchar(10),
        primary key(no)
	);

INSERT INTO `PRISON` VALUES
 (1001,'PANKAJ'),
 (1002,'MAHESH'),
 (1011,'SHRAVAN'),
 (1007,'MAHADEV'),
 (1009,'AJAY'),
 (1004,'DEVARAJ'),
 (1016,'ASHOK'),
 (1012,'BHARATH'),
 (1006,'GURU'),
 (1018,'AKSHAY'),
 (1013,'SHASHI'),
 (1005,'RAKESH'),
 (1010,'NAVEEN'),
 (1017,'NITHISH'),
 (1008,'ASHISH'),
 (1020,'ANAND'),
 (1014,'VIJAY'),
 (1003,'ARUN');

create table CRIMINAL
	(	cid varchar(10),
		cname varchar(10),
		cage int not null,
		cgender varchar(10),
		caddr varchar(75),
		prison_no int not null,
		primary key(cid),
		foreign key (prison_no) references PRISON(no)
	);

INSERT INTO `CRIMINAL` VALUES
('CR1001','RACHANA RAO',19,'F','#2-33,5th cross,girinagar,banglore',1001),
('CR1003','SHASHANK',29,'M','#5,2nd road,hosakerehalli,banglore',1002),
('CR1002','MANIKANTA',41,'M','#35-3,7th cross,indiranagar,banglore',1011),
('CR1009','PRATHIK',19,'M','#87,1st D main road,junnasandra,banglore',1007),
('CR1006','PRAJWAL',21,'M','#2,5th cross,vijaynagar,banglore',1009),
('CR1007','SYED AFZAL',20,'M','#45,2nd C main road,yelahanka phase 2,banglore',1004),
('CR1008','MAMATHA M',34,'F','#233,9th cross road,hebbal,banglore',1016),
('CR1005','PREM PSPK',31,'M','#96,2th cross main road,vidyaranyapura,banglore',1001),
('CR1004','PAVAN MJ',18,'M','#56-90,80 ft road,sarjapur,banglore',1012),
('CR1010','YASH',15,'M','#2-33,5th cross,hosakerehalli,banglore',1006),
('CR1011','MANIKANTA',41,'M','#34-5,7th cross,indiranagar,banglore',1018),
('CR1012','JAYARAJ',18,'M','#6,3rd cross,hanumanthnagar,banglore',1013),
('CR1013','SHIVU',29,'M','#14,9th main road,chickpet,banglore',1005),
('CR1014','SOORI',19,'M','#123,3rd cross,hosur,banglore',1010),
('CR1015','PRATHIK',19,'M','#87,1st D main road,junnasandra,banglore',1006),
('CR1016','GAGAN GOWDA',21,'M','#32,11th cross,junnasandra,banglore',1017),
('CR1017','RITHVIK',58,'M','#256,2nd A main road,marathahalli,banglore',1008),
('CR1018','ADITHYA',29,'M','#298,4th cross,hosur,banglore',1020),
('CR1019','MANIKANTA',41,'M','#34-5,7th main road,indiranagar,banglore',1014),
('CR1020','PRAJWAL',21,'M','#21,9th cross,vijaynagar,banglore',1003);

create table FIR
	(	fir_no varchar(10),
		fid varchar(10),
		victimname varchar(20),
		fdate DATE,
		ftime varchar(10),
		primary key(fir_no),
		foreign key(fid) references CRIME(id)
	);

INSERT INTO `FIR` VALUES
('F1001','C1001','GEETHA','2011-02-12','22:12'),
('F1002','C1003','AJAY','2000-11-25','13:20'),
('F1003','C1002','SANJAY','2015-06-22','03:59'),
('F1004','C1009','SHIVANI','2016-03-03','06:28'),
('F1005','C1006','RAM','2002-05-19','23:30'),
('F1006','C1007','SUDIP','2000-04-30','22:12'),
('F1007','C1008','JYOTHI','2014-02-16','09:01'),
('F1008','C1005','GAURI','2012-05-07','10:12'),
('F1009','C1004','SANDEEP','2008-02-12','06:17'),
('F1010','C1010','JOGENDRA','2007-01-18','19:47'),
('F1011','C1011','GEETHA','2000-07-08','20:26'),
('F1012','C1012','IRFAN','2003-02-23','23:16'),
('F1013','C1013','VISHWAS','2009-04-19','21:18'),
('F1014','C1014','ANUSHA','2013-12-03','18:45'),
('F1015','C1015','SWETHA','2019-01-19','12:01'),
('F1016','C1016','VINUTHA','2000-05-27','18:54'),
('F1017','C1017','ANITHA','2005-09-24','20:42'),
('F1018','C1018','SANJAY','2007-02-14','07:32'),
('F1019','C1019','PURUSH','2016-07-12','19:45'),
('F1020','C1020','AJAY','2018-09-11','06:14');
create table OFFICER
	(	officerid varchar(10),
		ofid varchar(10),
		ofname varchar(20),
		ofrank int not null,
		ofage int not null,
		ofgender varchar(10),
		password varchar(10),
		primary key(officerid),
		foreign key(ofid) references CRIME(id)
	);

INSERT INTO `OFFICER` VALUES
('OF1001','C1001','ASHUTOSH TIWARI',2,27,'M','of1001'),
('OF1002','C1003','ASHOK KUMAR',1,35,'M','of1002'),
('OF1003','C1002','PAVAN PAUL',3,25,'M','of1003'),
('OF1004','C1009','KEMPAIAH',1,40,'M','of1004'),
('OF1005','C1006','D ROOPA',2,27,'F','of1005'),
('OF1006','C1007','GANESH C A',3,25,'M','of1006'),
('OF1007','C1008','MD SHUJA',2,29,'M','of1007'),
('OF1008','C1005','H T SANGLIANA',1,49,'M','of1008'),
('OF1009','C1004','RAKSHITH KANAKI',3,25,'M','of1009'),
('OF1010','C1010','RAKESH MARIA',1,43,'M','of1010'),
('OF1011','C1011','VISHAL KENCHI',3,25,'M','of1011'),
('OF1012','C1012','SAMANTHA MENEZES',2,27,'F','of1012'),
('OF1013','C1013','VINAY KOOKAL',2,29,'M','of1013'),
('OF1014','C1014','RANJIT SHEKAR',1,39,'M','of1014'),
('OF1015','C1015','RAJESH REDDY',2,27,'M','of1015'),
('OF1016','C1016','MANOJ KUMAR',3,25,'M','of1016'),
('OF1017','C1017','SURESH BARMANUR',2,29,'M','of1017'),
('OF1018','C1018','VINOD CHAUBEY',1,51,'M','of1018'),
('OF1019','C1019','PRATHIK RATLA',2,27,'M','of1019'),
('OF1020','C1020','MAHENDRA KUMAR',3,25,'M','of1020');

create table SECTION_OF_LAW
	(	sid varchar(10),
		sentence varchar(100),
		primary key(sid)
		);

INSERT INTO `SECTION_OF_LAW` VALUES
('SEC390','3 years of jail or a liable fine'),
('SEC392','3 years of jail or a liable fine'),
('SEC507','upto 2 years of jail or a liable fine'),
('SEC420','upto 7 years of jail or a liable fine'),
('SEC370A','upto 10 years of jail'),
('SEC300','10 years of jail or a liable fine and may be prosecuted in severe cases'),
('SEC376','not less than 10 years of jail or maybe whole life or a liable fine'),
('SEC294','3 months of jail with a liable fine');

create table OUTCOME
(		outcomeid varchar(10),
		sectionid varchar(10),
		status varchar(50),
		verdict varchar(100),
		cas_id varchar(10),
		primary key (outcomeid),
		foreign key (sectionid) references SECTION_OF_LAW(sid),
		foreign key(cas_id) references CRIME(id)
		);

INSERT INTO `OUTCOME` VALUES
('O1001','SEC376','YES','5 years of jail','C1001'),
('O1002','SEC300','YES','7 years of jail','C1003'),
('O1003','SEC370A','YES','3 years of jail','C1002'),
('O1004','SEC376','NO','nil','C1009'),
('O1005','SEC420','YES','a fine of rs.10000/- to be paid','C1006'),
('O1006','SEC300','YES','prosecution','C1007'),
('O1007','SEC507','NO','nil','C1008'),
('O1008','SEC370A','NO','nil','C1005'),
('O1009','SEC390','YES','2.5 years of jail','C1004'),
('O1010','SEC507','YES','1 year of jail and a fine of rs.50000/- to be paid','C1010'),
('O1011','SEC420','YES','5 years of jail','C1011'),
('O1012','SEC376','YES','15 years of jail with a fine of rs.100000 to be paid','C1012'),
('O1013','SEC370A','YES','6 years of jail','C1013'),
('O1014','SEC294','NO','nil','C1014'),
('O1015','SEC392','YES','a fine of rs.15000/- to be paid','C1015'),
('O1016','SEC370A','YES','6.5 years of jail','C1016'),
('O1017','SEC507','YES','8 motnhs of jail with a fine of rs.12000/- to be paid','C1017'),
('O1018','SEC420','YES','a fine of rps.2000/-','C1018'),
('O1019','SEC390','YES','1 month of jail','C1019'),
('O1020','SEC392','NO','nil','C1020');

create table INVESTIGATION_DETAIL
	(	case_id varchar(10),
		invid varchar(10),
		date_of_start date,
		date_of_end date,
		inv_officer varchar(20),
		primary key (invid),
		foreign key(case_id) references CRIME(id)
		);

INSERT INTO `INVESTIGATION_DETAIL` VALUES
('C1001','I1001','2011-02-16','2011-03-10','ASHUTOSH TIWARI'),
('C1003','I1002','2000-11-30','2000-12-06','ASHOK KUMAR'),
('C1002','I1003','2015-07-03','2015-07-04','PAVAN PAUL'),
('C1009','I1004','2016-03-04',NULL,'KEMPAIAH'),
('C1006','I1005','2002-05-23','2002-06-05','D ROOPA'),
('C1017','I1006','2000-05-19','2001-05-20','GANESH C A'),
('C1008','I1007','2014-02-20',NULL,'MD SHUJA'),
('C1005','I1008','2012-05-07',NULL,'H T SANGLIANA'),
('C1004','I1009','2008-03-13','2008-03-23','RAKSHITH KANAKI'),
('C1010','I1010','2007-01-20','2007-01-21','RAKESH MARIA'),
('C1011','I1011','2000-07-10','2000-07-13','VISHAL KENCHI'),
('C1012','I1012','2003-02-28','2003-03-01','SAMANTHA MENEZES'),
('C1013','I1013','2009-04-28','2009-04-28','VINAY KOOKAL'),
('C1014','I1014','2013-12-09',NULL,'RANJIT SHEKAR'),
('C1015','I1015','2019-01-21','2019-01-24','RAJESH REDDY'),
('C1016','I1016','2000-05-30','2000-05-31','MANOJ KUMAR'),
('C1017','I1017','2005-09-26','2005-10-06','SURESH BARMANUR'),
('C1018','I1018','2007-02-28','2008-04-21','VINOD CHAUBEY'),
('C1019','I1019','2016-07-15','2016-07-24','PRATHIK RATLA'),
('C1020','I1020','16-09-2018',NULL,'MAHENDRA KUMAR');


create table COMMITED
	(	com_id varchar(10),
		cri_id varchar(10),
		cause varchar(10),
		primary key (com_id,cri_id),
		foreign key(com_id) references CRIMINAL(cid),
		foreign key(cri_id) references CRIME(id)
		);

INSERT INTO `COMMITED` VALUES
('CR1001','C1001','UNREVEALED'),
('CR1003','C1003','REVENGE'),
('CR1002','C1002','NEEDS'),
('CR1009','C1009','UNREVEALED'),
('CR1006','C1006','MONEY'),
('CR1007','C1007','OLD REVENGE'),
('CR1008','C1008','HACKFEVER'),
('CR1005','C1005','UNREVEALED'),
('CR1004','C1004','NEEDS'),
('CR1010','C1010','TO GET DATA'),
('CR1011','C1011','NEEDS'),
('CR1012','C1012','NEEDS'),
('CR1013','C1013','FORCED TO'),
('CR1014','C1014','DRUNK'),
('CR1015','C1015','NEEDS'),
('CR1016','C1016','FORCED TO'),
('CR1017','C1017','HACKFEVER'),
('CR1018','C1018','MONEY'),
('CR1019','C1019','FORCED TO'),
('CR1020','C1020','NEEDS');

create table HARMED
	(	vic_id varchar(10),
		c_id varchar(10),
		primary key (vic_id,c_id),
		foreign key(vic_id) references VICTIM(vid),
		foreign key(c_id) references CRIME(id)
		);

INSERT INTO `HARMED` VALUES
('V1001','C1001'),
('V1002','C1003'),
('V1003','C1002'),
('V1004','C1009'),
('V1005','C1006'),
('V1006','C1007'),
('V1007','C1008'),
('V1008','C1005'),
('V1009','C1004'),
('V1010','C1010'),
('V1011','C1011'),
('V1012','C1012'),
('V1013','C1013'),
('V1014','C1014'),
('V1015','C1015'),
('V1016','C1016'),
('V1017','C1017'),
('V1018','C1018'),
('V1019','C1019'),
('V1020','C1020');

create table CASETYPE
	(	ct_id varchar(10),
		case_type varchar(20),
		primary key (ct_id,case_type),
		foreign key(ct_id) references CRIME(id)
		);

INSERT INTO `CASETYPE` VALUES

('C1001','RAPE'),
('C1020','ROBBERY'),
('C1003','MURDER'),
('C1019','BURGLARY'),
('C1002','SLAVERY'),
('C1018','FRAUD'),
('C1009','RAPE'),
('C1017','CYBER CRIME'),
('C1006','FRAUD'),
('C1016','SLAVERY'),
('C1007','MANSLAUGHTER'),
('C1015','ROBBERY'),
('C1008','CYBER CRIME'),
('C1014','SEXUAL ASSAULT'),
('C1005','SLAVERY'),
('C1004','BURGLARY'),
('C1012','RAPE'),
('C1010','CYBER CRIME'),
('C1011','FRAUD'),
('C1013','SLAVERY');

create table PRISONTYPE
	(	pr_id int,
		prison_type varchar(10),
		primary key (pr_id,prison_type),
		foreign key(pr_id) references PRISON(no)
		);

INSERT INTO `PRISONTYPE` VALUES
 (1001,'MINIMUM'),
 (1002,'MEDIUM'),
 (1011,'HIGH'),
 (1007,'HIGH'),
 (1009,'MEDIUM'),
 (1004,'HIGH'),
 (1016,'HIGH'),
 (1012,'MEDIUM'),
 (1006,'JUVENILE'),
 (1018,'MINIMUM'),
 (1013,'MINIMUM'),
 (1005,'HIGH'),
 (1010,'MINIMUM'),
 (1017,'HIGH'),
 (1008,'MEDIUM'),
 (1020,'MEDIUM'),
 (1014,'MINIMUM'),
 (1003,'HIGH');

create table SHIFT
	(	of_id varchar(10),
		of_shift varchar(10),
		primary key (of_id,of_shift),
		foreign key(of_id) references OFFICER(officerid)
		);

INSERT INTO `SHIFT` VALUES
('OF1001','MORNING'),
('OF1002','EVENING'),
('OF1003','EVENING'),
('OF1004','NIGHT'),
('OF1005','MORNING'),
('OF1006','NIGHT'),
('OF1007','NIGHT'),
('OF1008','MORNING'),
('OF1009','MORNING'),
('OF1010','NIGHT'),
('OF1011','EVENING'),
('OF1012','NIGHT'),
('OF1013','MORNING'),
('OF1014','EVENING'),
('OF1015','NIGHT'),
('OF1016','MORNING'),
('OF1017','NIGHT'),
('OF1018','NIGHT'),
('OF1019','MORNING'),
('OF1020','MORNING');






