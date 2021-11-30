--MySQL:
CREATE TABLE IF NOT EXISTS customer_complaints (
  complaint_id int(6) unsigned NOT NULL,
  status int(3) unsigned NOT NULL,
  time_stamp char(20) NOT NULL,
  PRIMARY KEY (complaint_id,status)
) DEFAULT CHARSET=utf8;

--Postgres:
CREATE TABLE IF NOT EXISTS customer_complaints (
  complaint_id int  NOT NULL,
  status int  NOT NULL,
  time_stamp char(20) NOT NULL,
  PRIMARY KEY (complaint_id,status)
);



INSERT INTO customer_complaints (complaint_id, status, time_stamp) VALUES
 (110034,0,'2020-01-20 02:10:00'),
(110035,0,'2020-01-20 03:10:00'),
(110036,0,'2020-01-20 04:10:00'),
(110037,0,'2020-01-20 05:10:00'),
(110038,0,'2020-01-20 06:10:00'),
(110039,0,'2020-01-20 07:10:00'),
(110040,0,'2020-01-20 08:10:00'),
(110041,0,'2020-01-20 09:10:00'),
(110042,0,'2020-01-20 10:10:00'),
(110043,0,'2020-01-20 11:10:00'),
(110044,0,'2020-01-20 12:10:00'),
(110045,0,'2020-01-20 13:10:00'),
(110046,0,'2020-01-20 14:10:00'),
(110047,0,'2020-01-20 15:10:00'),
(110048,0,'2020-01-20 16:10:00'),
(110049,0,'2020-01-20 17:10:00'),
(110050,0,'2020-01-20 18:10:00'),
(110051,0,'2020-01-20 19:10:00'),
(110052,0,'2020-01-20 20:10:00'),
(110053,0,'2020-01-20 21:10:00'),
(110054,0,'2020-01-20 22:10:00'),
(110055,0,'2020-01-20 23:10:00'),
(110056,0,'2020-01-21 00:10:00'),
(110057,0,'2020-01-21 01:10:00'),
(110058,0,'2020-01-21 02:10:00'),
(110059,0,'2020-01-21 03:10:00'),
(110060,0,'2020-01-21 04:10:00'),
(110061,0,'2020-01-21 05:10:00'),
(110062,0,'2020-01-21 06:10:00'),
(110063,0,'2020-01-21 07:10:00'),
(110064,0,'2020-01-21 08:10:00'),
(110065,0,'2020-01-21 09:10:00'),
(110066,0,'2020-01-21 10:10:00'),
(110067,0,'2020-01-21 11:10:00'),
(110068,0,'2020-01-21 12:10:00'),
(110069,0,'2020-01-21 13:10:00'),
(110070,0,'2020-01-21 14:10:00'),
(110071,0,'2020-01-21 15:10:00'),
(110072,0,'2020-01-21 16:10:00'),
(110073,0,'2020-01-21 17:10:00'),
(110074,0,'2020-01-21 18:10:00'),
(110075,0,'2020-01-21 19:10:00'),
(110076,0,'2020-01-21 20:10:00'),
(110077,0,'2020-01-21 21:10:00'),
(110078,0,'2020-01-21 22:10:00'),
(110079,0,'2020-01-21 23:10:00'),
(110080,0,'2020-01-22 00:10:00'),
(110081,0,'2020-01-22 01:10:00'),
(110082,0,'2020-01-22 02:10:00'),
(110083,0,'2020-01-22 03:10:00'),
(110084,0,'2020-01-22 04:10:00'),
(110085,0,'2020-01-22 05:10:00'),
(110086,0,'2020-01-22 06:10:00'),
(110087,0,'2020-01-22 07:10:00'),
(110088,0,'2020-01-22 08:10:00'),
(110089,0,'2020-01-22 09:10:00'),
(110090,0,'2020-01-22 10:10:00'),
(110091,0,'2020-01-22 11:10:00'),
(110092,0,'2020-01-22 12:10:00'),
(110093,0,'2020-01-22 13:10:00'),
(110094,0,'2020-01-22 14:10:00'),
(110095,0,'2020-01-22 15:10:00'),
(110096,0,'2020-01-22 16:10:00'),
(110097,0,'2020-01-22 17:10:00'),
(110098,0,'2020-01-22 18:10:00'),
(110034,1,'2020-01-20 14:10:00'),
(110035,1,'2020-01-20 17:34:00'),
(110037,1,'2020-01-20 21:58:00'),
(110038,1,'2020-01-21 01:22:00'),
(110040,1,'2020-01-21 05:46:00'),
(110042,1,'2020-01-21 10:10:00'),
(110043,1,'2020-01-21 13:34:00'),
(110044,1,'2020-01-21 16:58:00'),
(110045,1,'2020-01-21 20:22:00'),
(110046,1,'2020-01-21 23:46:00'),
(110047,1,'2020-01-22 03:10:00'),
(110049,1,'2020-01-22 07:34:00'),
(110050,1,'2020-01-22 10:58:00'),
(110052,1,'2020-01-22 15:22:00'),
(110054,1,'2020-01-22 19:46:00'),
(110055,1,'2020-01-22 23:10:00'),
(110057,1,'2020-01-23 03:34:00'),
(110059,1,'2020-01-23 07:58:00'),
(110060,1,'2020-01-23 11:22:00'),
(110061,1,'2020-01-23 14:46:00'),
(110063,1,'2020-01-23 19:10:00'),
(110064,1,'2020-01-23 22:34:00'),
(110066,1,'2020-01-24 02:58:00'),
(110067,1,'2020-01-24 06:22:00'),
(110068,1,'2020-01-24 09:46:00'),
(110070,1,'2020-01-24 14:10:00'),
(110071,1,'2020-01-24 17:34:00'),
(110073,1,'2020-01-24 21:58:00'),
(110074,1,'2020-01-25 01:22:00'),
(110076,1,'2020-01-25 05:46:00'),
(110077,1,'2020-01-25 09:10:00'),
(110078,1,'2020-01-25 12:34:00'),
(110079,1,'2020-01-25 15:58:00'),
(110081,1,'2020-01-22 13:10:00'),
(110082,1,'2020-01-22 16:34:00'),
(110083,1,'2020-01-22 19:58:00'),
(110084,1,'2020-01-22 23:22:00'),
(110085,1,'2020-01-23 02:46:00'),
(110088,1,'2020-01-23 08:10:00'),
(110089,1,'2020-01-23 11:34:00'),
(110090,1,'2020-01-23 14:58:00'),
(110092,1,'2020-01-23 19:22:00'),
(110093,1,'2020-01-23 22:46:00'),
(110095,1,'2020-01-24 03:10:00'),
(110096,1,'2020-01-24 06:34:00'),
(110097,1,'2020-01-24 09:58:00'),
(110098,1,'2020-01-24 13:22:00');