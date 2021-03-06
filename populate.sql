INSERT INTO patient
VALUES
(161,'刘景','142201198702130061','男','1987-2-13','新华路光源街'),
(181,'陈禄','142201196608190213','男','1966-8-19','城建路茂源街'),
(201,'曾华','142201197803110234','男','1978-3-11','新建路柳巷'),
(421,'傅伟相','142202199100230221','男','1991-9-23','高新区西源大道'),
(481,'张珍','142201199206200321','女','1992-6-20','西湖区南街'),
(501,'李秀','142203198803300432','女','1988-3-30','泰山大道北路');

INSERT INTO patient_tel
VALUES
(01,161,'手机','12988011007'),
(02,161,'家庭电话','01166699988'),
(03,161,'单位电话','01244552277');

INSERT INTO salary
VALUES
(03,'高级',4000),
(05,'中级',3000),
(01,'高级',5000),
(06,'初级',2500);

INSERT INTO title
VALUES
(102,05,'医师','医疗'),
(104,03,'副主任医师','医疗'),
(103,05,'主治医师','医疗'),
(105,01,'主任医师','医疗'),
(233,06,'初级医师','护理'),
(235,03,'主任医师','护理');

INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (0,'校医院',NULL);
INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (10,'门诊部',0);
INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (101,'消化内科',10);
INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (102,'急诊内科',10);
INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (103,'门内三诊室',10);
INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (20,'社区医疗部',0);
INSERT INTO dept(deptno,deptname,parent_deptno)
VALUES (201,'家庭病床区',20);

INSERT INTO doctor
VALUES
(140,'郝亦柯','男',28,101,102),
(21,'刘伟','男',43,103,235),
(368,'罗晓','女',27,102,105),
(73,'邓英超','女',43,201,103),
(82,'杨勋','男',36,101,104);

UPDATE dept SET manager=82 WHERE deptno=101;
UPDATE dept SET manager=368 WHERE deptno=102;
UPDATE dept SET manager=21 WHERE deptno=103;
UPDATE dept SET manager=73 WHERE deptno=201;

INSERT INTO godown_entry
VALUES
(1,'2016-1-2 13:00:12','抗生素类药品'),
(12,'2016-11-24 18:00:00','心脑血管用药'),
(31,'2017-1-14 9:02:01','消化系统用药'),
(34,'2017-3-20 12:19:10','呼吸系统用药'),
(2,'2016-1-3 14:00:00','泌尿系统用药'),
(11,'2016-11-20 18:00:00','血液系统用药'),
(3,'2016-1-10 09:10:22','抗风湿类药品'),
(9,'2016-4-27 13:20:00','注射剂类药品'),
(14,'2016-12-20 17:00:31','激素类药品'),
(4,'2016-1-12 20:10:02','皮肤科用药'),
(6,'2016-4-27 13:20:00','妇科用药'),
(7,'2016-5-10 18:30:05','抗肿瘤用药'),
(13,'2016-12-01 12:15:00','抗精神病药品'),
(8,'2016-6-06 15:50:20','清热解暑药品'),
(33,'2017-2-24 8:02:52','维生素、矿物资药品'),
(32,'2017-1-19 7:22:00','糖尿病用药');

INSERT INTO medicine
VALUES
(314172,'卡托普利片',0.037,'片','西药'),
(314418,'替硝痤葡萄糖针',11.5,'瓶','西药'),
(314941,'肾石通颗粒',27.1,'盒','西药'),
(315189,'心胃止痛胶囊',26.9,'盒','西药'),
(315501,'阿奇霉素胶囊',21,'盒','西药'),
(315722,'L-谷氨酰胺胶囊',26.9,'盒','西药'),
(315805,'盐酸雷尼替丁胶囊',0.1,'粒','西药'),
(315977,'胃立康片',26.5,'盒','西药'),
(316792,'复方雷尼替丁胶囊',2.3,'粒','西药'),
(316910,'依诺沙星注射液',46,'支','西药'),
(317660,'蒲公英胶囊',25.5,'盒','中成药');

INSERT INTO godown_slave
VALUES
(02,14,314941,23,'箱',3000),
(12,1,315189,50,'箱',2560),
(34,12,314172,100,'盒',50300),
(55,2,315501,85,'盒',1450);

INSERT INTO diagnosis
VALUES
(1645,481,140,'呼吸道感染','伤风感冒','2007-7-21 01:12:01',3),
(2170,201,21,'皮肤和软组织感染','细菌感染','2007-7-22 10:10:03',5),
(3265,161,82,'胃溃疡','螺旋杆菌感染','2007-7-23 10:59:42',5),
(3308,181,82,'消化不良','胃病','2007-7-23 11:11:34',5),
(3523,501,73,'心力衰竭','高血压','2007-7-23 02:01:05',7),
(7816,421,368,'肾盂结石','肾结石','2008-1-8 05:17:03',3);

INSERT INTO recipe_master
VALUES
(1282317,103,140,181,12,'2016-7-23 01:12:01'),
(1282872,201,368,161,50,'2016-7-23 10:10:03'),
(1283998,20,73,481,23,'2016-7-23 10:59:42'),
(1284041,101,368,501,48,'2017-7-23 11:11:34'),
(1284256,103,21,201,36,'2017-7-23 02:01:05'),
(1458878,102,82,421,30,'2017-1-8 05:17:03');

INSERT INTO recipe_detail
VALUES
(16,1282872,314941,200,3,'盒'),
(32,1458878,315189,360,4,'盒'),
(47,1284041,315977,14,1,'片'),
(89,1282317,316910,2.5,10,'粒');

INSERT INTO register_form(rfno,deptno,dno,pno,rftime,rffee)
VALUES
(13,20,73,481,'2016-7-11 06:12:09',5),
(56,201,368,161,'2016-7-28 09:20:19',7),
(71,103,140,181,'2017-1-10 16:09:02',7),
(89,102,82,421,'2017-3-16 19:18:10',5);