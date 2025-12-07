USE [CuseBus]
GO

-------------------------------# INSERTING USERS #-------------------------------------

PRINT('STEP 1: INSERTING INTO users')

INSERT INTO users (user_email, user_password, user_firstname, user_lastname, user_phone, user_address, user_home_lon, user_home_lat)
VALUES
('mikedoe1@example.com', '123', 'Mike', 'Doe', '(315) 555-0001', '1500 E Genesee St', -76.1651, 43.0481),
('janedoe2@example.com', '123', 'Jane', 'Doe', '(315) 555-0002', '456 Maple St', -76.1722, 43.0552),
('michael3@example.com', '123', 'Michael', 'Smith', '(315) 555-0003', '789 Oak St', -76.1573, 43.0613),
('emily4@example.com', '123', 'Emily', 'Johnson', '(315) 555-0004', '321 Pine St', -76.1534, 43.0674),
('david5@example.com', '123', 'David', 'Brown', '(315) 555-0005', '654 Birch St', -76.1495, 43.0735),
('linda6@example.com', '123', 'Linda', 'Taylor', '(315) 555-0006', '987 Willow St', -76.1486, 43.0766),
('robert7@example.com', '123', 'Robert', 'Anderson', '(315) 555-0007', '135 Walnut St', -76.1737, 43.0457),
('susan8@example.com', '123', 'Susan', 'Thomas', '(315) 555-0008', '246 Ash St', -76.1818, 43.0418),
('william9@example.com', '123', 'William', 'Jackson', '(315) 555-0009', '357 Poplar St', -76.1889, 43.0389),
('karen10@example.com', '123', 'Karen', 'White', '(315) 555-0010', '468 Beech St', -76.1950, 43.0350),
('james11@example.com', '123', 'James', 'Harris', '(315) 555-0011', '579 Sycamore St', -76.1451, 43.0651),
('patricia12@example.com', '123', 'Patricia', 'Martin', '(315) 555-0012', '680 Spruce St', -76.1412, 43.0612),
('charles13@example.com', '123', 'Charles', 'Clark', '(315) 555-0013', '781 Hickory St', -76.1373, 43.0573),
('barbara14@example.com', '123', 'Barbara', 'Lewis', '(315) 555-0014', '882 Chestnut St', -76.1334, 43.0534),
('thomas15@example.com', '123', 'Thomas', 'Walker', '(315) 555-0015', '983 Fir St', -76.1295, 43.0495),
('nancy16@example.com', '123', 'Nancy', 'Hall', '(315) 555-0016', '109 Elmwood St', -76.1756, 43.0236),
('daniel17@example.com', '123', 'Daniel', 'Young', '(315) 555-0017', '210 Maplewood St', -76.1797, 43.0277),
('sandra18@example.com', '123', 'Sandra', 'Allen', '(315) 555-0018', '311 Oakwood St', -76.1838, 43.0318),
('matthew19@example.com', '123', 'Matthew', 'King', '(315) 555-0019', '412 Pinewood St', -76.1879, 43.0359),
('ashley20@example.com', '123', 'Ashley', 'Wright', '(315) 555-0020', '513 Birchwood St', -76.1910, 43.0390),
('christopher21@example.com', '123', 'Christopher', 'Lopez', '(315) 555-0021', '614 Willowwood St', -76.1421, 43.0621),
('jessica22@example.com', '123', 'Jessica', 'Hill', '(315) 555-0022', '715 Walnutwood St', -76.1462, 43.0662),
('mark23@example.com', '123', 'Mark', 'Scott', '(315) 555-0023', '816 Ashwood St', -76.1503, 43.0703),
('mary24@example.com', '123', 'Mary', 'Green', '(315) 555-0024', '917 Beechwood St', -76.1544, 43.0744),
('paul25@example.com', '123', 'Paul', 'Adams', '(315) 555-0025', '102 Sycamorewood St', -76.1585, 43.0785),
('jennifer26@example.com', '123', 'Jennifer', 'Baker', '(315) 555-0026', '203 Sprucewood St', -76.1626, 43.0426),
('steven27@example.com', '123', 'Steven', 'Nelson', '(315) 555-0027', '304 Hickorywood St', -76.1667, 43.0467),
('margaret28@example.com', '123', 'Margaret', 'Carter', '(315) 555-0028', '405 Chestnutwood St', -76.1708, 43.0508),
('joshua29@example.com', '123', 'Joshua', 'Mitchell', '(315) 555-0029', '506 Firwood St', -76.1749, 43.0549),
('sarah30@example.com', '123', 'Sarah', 'Perez', '(315) 555-0030', '607 Elmwood St', -76.1790, 43.0590),
('anthony31@example.com', '123', 'Anthony', 'Roberts', '(315) 555-0031', '708 Maplewood St', -76.1831, 43.0631),
('amanda32@example.com', '123', 'Amanda', 'Turner', '(315) 555-0032', '809 Oakwood St', -76.1872, 43.0672),
('brandon33@example.com', '123', 'Brandon', 'Phillips', '(315) 555-0033', '910 Pinewood St', -76.1913, 43.0713),
('melissa34@example.com', '123', 'Melissa', 'Campbell', '(315) 555-0034', '112 Birchwood St', -76.1424, 43.0754),
('kevin35@example.com', '123', 'Kevin', 'Parker', '(315) 555-0035', '213 Willowwood St', -76.1465, 43.0455),
('kimberly36@example.com', '123', 'Kimberly', 'Evans', '(315) 555-0036', '314 Walnutwood St', -76.1506, 43.0496),
('brian37@example.com', '123', 'Brian', 'Edwards', '(315) 555-0037', '415 Ashwood St', -76.1547, 43.0537),
('laura38@example.com', '123', 'Laura', 'Collins', '(315) 555-0038', '516 Beechwood St', -76.1588, 43.0578),
('ryan39@example.com', '123', 'Ryan', 'Stewart', '(315) 555-0039', '617 Sycamorewood St', -76.1629, 43.0619),
('karen40@example.com', '123', 'Karen', 'Morris', '(315) 555-0040', '718 Sprucewood St', -76.1670, 43.0650),
('jacob41@example.com', '123', 'Jacob', 'Rogers', '(315) 555-0041', '819 Hickorywood St', -76.1711, 43.0691),
('michelle42@example.com', '123', 'Michelle', 'Reed', '(315) 555-0042', '920 Chestnutwood St', -76.1752, 43.0722),
('zachary43@example.com', '123', 'Zachary', 'Cook', '(315) 555-0043', '122 Firwood St', -76.1793, 43.0763),
('sophia44@example.com', '123', 'Sophia', 'Morgan', '(315) 555-0044', '223 Elmwood St', -76.1834, 43.0234),
('ethan45@example.com', '123', 'Ethan', 'Bell', '(315) 555-0045', '324 Maplewood St', -76.1875, 43.0275),
('emma46@example.com', '123', 'Emma', 'Murphy', '(315) 555-0046', '425 Oakwood St', -76.1916, 43.0316),
('tyler47@example.com', '123', 'Tyler', 'Bailey', '(315) 555-0047', '526 Pinewood St', -76.1457, 43.0357),
('olivia48@example.com', '123', 'Olivia', 'Rivera', '(315) 555-0048', '627 Birchwood St', -76.1498, 43.0398),
('logan49@example.com', '123', 'Logan', 'Cooper', '(315) 555-0049', '728 Willowwood St', -76.1539, 43.0439),
('lisa50@example.com', '123', 'Lisa', 'Martin', '(315) 555-0050', '999 Cedar St', -76.2450, 43.0200);

SELECT * FROM users

-------------------------------# INSERTING BUSES/TROLLEYS #--------------------------------

PRINT('STEP 2: INSERTING INTO buses')

INSERT INTO buses (bus_name, bus_number, bus_provider, bus_active)
VALUES 
('Main Campus', 43, 'Centro Bus', 1),
('East Campus', 243, 'Centro Bus', 1),
('E. Genesee St - Westcott St', 343, 'Centro Bus', 1),
('Connective Corridor', 443, 'Centro Bus', 1),
('Skytop', 44, 'Centro Bus', 1),
('South Campus', 344, 'Centro Bus', 1),
('Thurber St', 345, 'Centro Bus', 1),
('Comstock / Colvin St. Loop', 1, 'SU Trolley', 1),
('Orange Loop', 2, 'SU Trolley', 1),
('Blue Loop', 3, 'SU Trolley', 1),
('South Campus Loop', 4, 'SU Trolley', 1),
('Warehouse Loop', 5, 'SU Trolley', 1),
('Euclid Loop', 6, 'SU Trolley', 1);

SELECT * FROM buses

-------------------------------# INSERTING BUS/TROLLEY STOPS #--------------------------------

PRINT('STEP 3: INSERTING INTO bus_stops')

INSERT INTO bus_stops (stop_number, stop_name, stop_address, stop_longitude, stop_latitude, stop_active)
VALUES
(1683, 'SU College Place', '101 College Place', -76.1349, 43.0381, 1),
(10203, 'Irving Ave/E. Genesee St', '1060 E Genesee St', -76.1353, 43.0466, 1),
(2153, 'E. Genesee St/S. Crouse Ave', '2121 E Genesee St', -76.11725, 43.04586, 1),
(1635, 'E. Genesee St/Westcott St', '2090 E Genesee St', -76.1265, 43.0410, 1),
(1713, 'Westcott St/Euclid Ave', '767 Westcott St', -76.1359, 43.0365, 1),
(7748, 'Flint Hall', '2 Mt Olympus Dr', -76.130386, 43.037286, 1),
(1715, 'Westcott St/Euclid Ave', '767 Westcott St', -76.124116, 43.036396, 1),
(10201, 'Westcott St/E. Genesee St', '2004 E. Genesee Street', -76.126503, 43.037123, 1),
(14928, 'University Ave/E. Genesee St', '398 University Avenue', -76.130612, 43.035315, 1),
(12709, 'University Ave/Marshall St', '198 Marshall Street', -76.129233, 43.035853, 1),
(17391, 'Henry St/Van Buren St', '101 Henry St', -76.154697, 43.040316, 1),
(12553, 'Waverly Ave/Walnut Pl', '200 Waverly Avenue', -76.137501, 43.035198, 1),
(12715, 'E. Adams St/Ostrom Ave', '498 E Adams St', -76.1292, 43.0426, 1);

SELECT * FROM bus_stops

-------------------------------# INSERTING BUS/TROLLEY SCHEDULES #-----------------------------

DECLARE @bus_id INT;
DECLARE @stop_id INT;

PRINT('STEP 4.1: INSERTING INTO bus_schedules BUS E. Genesee St - Westcott St - 343')
BEGIN /* INSERTING SCHEDULES FOR BUS E. Genesee St - Westcott St - 343 */

    SET @bus_id = (SELECT bus_id FROM buses WHERE bus_number = 343);

    ---------- STOP 1: U College Place - 1683 ------------------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1683);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '07:45', 1),
    (@bus_id, @stop_id, 1, '08:10', 1),
    (@bus_id, @stop_id, 1, '08:35', 1),
    (@bus_id, @stop_id, 1, '08:50', 1),
    (@bus_id, @stop_id, 1, '09:05', 1),
    (@bus_id, @stop_id, 1, '09:20', 1),
    (@bus_id, @stop_id, 1, '09:35', 1),
    (@bus_id, @stop_id, 1, '09:45', 1),
    (@bus_id, @stop_id, 1, '10:05', 1),
    (@bus_id, @stop_id, 1, '10:15', 1),
    (@bus_id, @stop_id, 1, '10:35', 1),
    (@bus_id, @stop_id, 1, '11:05', 1),
    (@bus_id, @stop_id, 1, '11:35', 1),
    (@bus_id, @stop_id, 1, '12:05', 1),
    (@bus_id, @stop_id, 1, '12:35', 1),
    (@bus_id, @stop_id, 1, '13:05', 1),
    (@bus_id, @stop_id, 1, '13:35', 1),
    (@bus_id, @stop_id, 1, '14:05', 1),
    (@bus_id, @stop_id, 1, '14:35', 1),
    (@bus_id, @stop_id, 1, '15:05', 1),
    (@bus_id, @stop_id, 1, '15:20', 1),
    (@bus_id, @stop_id, 1, '15:35', 1),
    (@bus_id, @stop_id, 1, '15:50', 1),
    (@bus_id, @stop_id, 1, '16:05', 1),
    (@bus_id, @stop_id, 1, '16:20', 1),
    (@bus_id, @stop_id, 1, '16:35', 1),
    (@bus_id, @stop_id, 1, '16:50', 1),
    (@bus_id, @stop_id, 1, '17:05', 1),
    (@bus_id, @stop_id, 1, '17:20', 1),
    (@bus_id, @stop_id, 1, '17:45', 1);

    ---------- STOP 2: Irving Ave/E. Genesee St - 10203 --------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 10203);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '7:52', 1),
    (@bus_id, @stop_id, 1, '8:17', 1),
    (@bus_id, @stop_id, 1, '8:42', 1),
    (@bus_id, @stop_id, 1, '8:57', 1),
    (@bus_id, @stop_id, 1, '9:12', 1),
    (@bus_id, @stop_id, 1, '9:27', 1),
    (@bus_id, @stop_id, 1, '9:42', 1),
    (@bus_id, @stop_id, 1, '9:52', 1),
    (@bus_id, @stop_id, 1, '10:12', 1),
    (@bus_id, @stop_id, 1, '10:22', 1),
    (@bus_id, @stop_id, 1, '10:42', 1),
    (@bus_id, @stop_id, 1, '11:12', 1),
    (@bus_id, @stop_id, 1, '11:42', 1),
    (@bus_id, @stop_id, 1, '12:12', 1),
    (@bus_id, @stop_id, 1, '12:42', 1),
    (@bus_id, @stop_id, 1, '13:12', 1),
    (@bus_id, @stop_id, 1, '13:42', 1),
    (@bus_id, @stop_id, 1, '14:12', 1),
    (@bus_id, @stop_id, 1, '14:42', 1),
    (@bus_id, @stop_id, 1, '15:12', 1),
    (@bus_id, @stop_id, 1, '15:27', 1),
    (@bus_id, @stop_id, 1, '15:42', 1),
    (@bus_id, @stop_id, 1, '15:57', 1),
    (@bus_id, @stop_id, 1, '16:12', 1),
    (@bus_id, @stop_id, 1, '16:27', 1),
    (@bus_id, @stop_id, 1, '16:42', 1),
    (@bus_id, @stop_id, 1, '16:57', 1),
    (@bus_id, @stop_id, 1, '17:12', 1),
    (@bus_id, @stop_id, 1, '17:27', 1);

    ---------- STOP 3: E. Genesee St/S. Crouse Ave - 2153 ------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 2153);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '7:28', 1),
    (@bus_id, @stop_id, 1, '7:53', 1),
    (@bus_id, @stop_id, 1, '8:18', 1),
    (@bus_id, @stop_id, 1, '8:33', 1),
    (@bus_id, @stop_id, 1, '8:43', 1),
    (@bus_id, @stop_id, 1, '9:03', 1),
    (@bus_id, @stop_id, 1, '9:13', 1),
    (@bus_id, @stop_id, 1, '9:28', 1),
    (@bus_id, @stop_id, 1, '9:43', 1),
    (@bus_id, @stop_id, 1, '9:58', 1),
    (@bus_id, @stop_id, 1, '10:13', 1),
    (@bus_id, @stop_id, 1, '10:28', 1),
    (@bus_id, @stop_id, 1, '10:43', 1),
    (@bus_id, @stop_id, 1, '11:13', 1),
    (@bus_id, @stop_id, 1, '11:43', 1),
    (@bus_id, @stop_id, 1, '12:13', 1),
    (@bus_id, @stop_id, 1, '12:43', 1),
    (@bus_id, @stop_id, 1, '13:13', 1),
    (@bus_id, @stop_id, 1, '13:43', 1),
    (@bus_id, @stop_id, 1, '14:13', 1),
    (@bus_id, @stop_id, 1, '14:43', 1),
    (@bus_id, @stop_id, 1, '15:13', 1),
    (@bus_id, @stop_id, 1, '15:28', 1),
    (@bus_id, @stop_id, 1, '15:43', 1),
    (@bus_id, @stop_id, 1, '15:58', 1),
    (@bus_id, @stop_id, 1, '16:13', 1),
    (@bus_id, @stop_id, 1, '16:28', 1),
    (@bus_id, @stop_id, 1, '16:46', 1),
    (@bus_id, @stop_id, 1, '16:58', 1),
    (@bus_id, @stop_id, 1, '17:13', 1),
    (@bus_id, @stop_id, 1, '17:28', 1);

    ---------- STOP 4: E. Genesee St/Westcott St - 1635 --------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1635);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '7:31', 1),
    (@bus_id, @stop_id, 1, '7:56', 1),
    (@bus_id, @stop_id, 1, '8:21', 1),
    (@bus_id, @stop_id, 1, '8:36', 1),
    (@bus_id, @stop_id, 1, '8:46', 1),
    (@bus_id, @stop_id, 1, '9:06', 1),
    (@bus_id, @stop_id, 1, '9:16', 1),
    (@bus_id, @stop_id, 1, '9:31', 1),
    (@bus_id, @stop_id, 1, '9:46', 1),
    (@bus_id, @stop_id, 1, '10:01', 1),
    (@bus_id, @stop_id, 1, '10:16', 1),
    (@bus_id, @stop_id, 1, '10:31', 1),
    (@bus_id, @stop_id, 1, '10:46', 1),
    (@bus_id, @stop_id, 1, '11:16', 1),
    (@bus_id, @stop_id, 1, '11:46', 1),
    (@bus_id, @stop_id, 1, '12:16', 1),
    (@bus_id, @stop_id, 1, '12:46', 1),
    (@bus_id, @stop_id, 1, '14:16', 1),
    (@bus_id, @stop_id, 1, '14:46', 1),
    (@bus_id, @stop_id, 1, '14:16', 1),
    (@bus_id, @stop_id, 1, '14:46', 1),
    (@bus_id, @stop_id, 1, '16:16', 1),
    (@bus_id, @stop_id, 1, '16:31', 1),
    (@bus_id, @stop_id, 1, '16:46', 1),
    (@bus_id, @stop_id, 1, '16:01', 1),
    (@bus_id, @stop_id, 1, '16:16', 1),
    (@bus_id, @stop_id, 1, '16:31', 1),
    (@bus_id, @stop_id, 1, '16:49', 1),
    (@bus_id, @stop_id, 1, '17:01', 1),
    (@bus_id, @stop_id, 1, '17:16', 1),
    (@bus_id, @stop_id, 1, '17:31', 1);

    ---------- STOP 5: Westcott St/Euclid Ave - 1713 -----------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1713);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '7:33', 1),
    (@bus_id, @stop_id, 1, '7:58', 1),
    (@bus_id, @stop_id, 1, '8:23', 1),
    (@bus_id, @stop_id, 1, '8:38', 1),
    (@bus_id, @stop_id, 1, '8:48', 1),
    (@bus_id, @stop_id, 1, '9:08', 1),
    (@bus_id, @stop_id, 1, '9:18', 1),
    (@bus_id, @stop_id, 1, '9:33', 1),
    (@bus_id, @stop_id, 1, '9:48', 1),
    (@bus_id, @stop_id, 1, '10:03', 1),
    (@bus_id, @stop_id, 1, '10:18', 1),
    (@bus_id, @stop_id, 1, '10:33', 1),
    (@bus_id, @stop_id, 1, '10:48', 1),
    (@bus_id, @stop_id, 1, '11:18', 1),
    (@bus_id, @stop_id, 1, '11:48', 1),
    (@bus_id, @stop_id, 1, '12:18', 1),
    (@bus_id, @stop_id, 1, '12:48', 1),
    (@bus_id, @stop_id, 1, '13:18', 1),
    (@bus_id, @stop_id, 1, '13:48', 1),
    (@bus_id, @stop_id, 1, '14:18', 1),
    (@bus_id, @stop_id, 1, '14:48', 1),
    (@bus_id, @stop_id, 1, '15:18', 1),
    (@bus_id, @stop_id, 1, '15:33', 1),
    (@bus_id, @stop_id, 1, '15:48', 1),
    (@bus_id, @stop_id, 1, '16:03', 1),
    (@bus_id, @stop_id, 1, '16:18', 1),
    (@bus_id, @stop_id, 1, '16:33', 1),
    (@bus_id, @stop_id, 1, '16:51', 1),
    (@bus_id, @stop_id, 1, '17:03', 1),
    (@bus_id, @stop_id, 1, '17:18', 1),
    (@bus_id, @stop_id, 1, '17:33', 1);
END

PRINT('STEP 4.2: INSERTING INTO bus_schedules BUS East Campus - 243')
BEGIN /* INSERTING SCHEDULES FOR BUS East Campus - 243  */
    
    SET @bus_id = (SELECT bus_id FROM buses WHERE bus_number = 243);

    ---------- STOP 1: U College Place - 1683 ----------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1683);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:30', 1),
    (@bus_id, @stop_id, 1, '18:10', 1),
    (@bus_id, @stop_id, 1, '18:50', 1),
    (@bus_id, @stop_id, 1, '19:30', 1),
    (@bus_id, @stop_id, 0, '17:30', 1),
    (@bus_id, @stop_id, 0, '18:10', 1),
    (@bus_id, @stop_id, 0, '18:50', 1),
    (@bus_id, @stop_id, 0, '19:30', 1);

    ---------- STOP 2: Flint Hall - 7748 ---------------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 7748);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:36', 1),
    (@bus_id, @stop_id, 1, '18:16', 1),
    (@bus_id, @stop_id, 1, '18:56', 1),
    (@bus_id, @stop_id, 1, '19:36', 1),
    (@bus_id, @stop_id, 0, '17:36', 1),
    (@bus_id, @stop_id, 0, '18:16', 1),
    (@bus_id, @stop_id, 0, '18:56', 1),
    (@bus_id, @stop_id, 0, '19:36', 1);

    ---------- STOP 3: Westcott St/Euclid Ave - 1715 -----------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1715);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:43', 1),
    (@bus_id, @stop_id, 1, '18:23', 1),
    (@bus_id, @stop_id, 1, '19:03', 1),
    (@bus_id, @stop_id, 1, '19:43', 1),
    (@bus_id, @stop_id, 0, '17:43', 1),
    (@bus_id, @stop_id, 0, '18:23', 1),
    (@bus_id, @stop_id, 0, '19:03', 1),
    (@bus_id, @stop_id, 0, '19:43', 1);

    ---------- STOP 4: Westcott St/E. Genesee St - 10201 -----------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 10201);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:45', 1),
    (@bus_id, @stop_id, 1, '18:25', 1),
    (@bus_id, @stop_id, 1, '19:05', 1),
    (@bus_id, @stop_id, 1, '19:45', 1),
    (@bus_id, @stop_id, 0, '17:45', 1),
    (@bus_id, @stop_id, 0, '18:25', 1),
    (@bus_id, @stop_id, 0, '19:05', 1),
    (@bus_id, @stop_id, 0, '19:45', 1);

    ---------- STOP 5: University Ave/E. Genesee St - 14928 --------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 14928);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:47', 1),
    (@bus_id, @stop_id, 1, '18:27', 1),
    (@bus_id, @stop_id, 1, '19:07', 1),
    (@bus_id, @stop_id, 1, '19:47', 1),
    (@bus_id, @stop_id, 0, '17:47', 1),
    (@bus_id, @stop_id, 0, '18:27', 1),
    (@bus_id, @stop_id, 0, '19:07', 1),
    (@bus_id, @stop_id, 0, '19:47', 1);

    ---------- STOP 6: University Ave/Marshall St - 12709 ----------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 12709);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:48', 1),
    (@bus_id, @stop_id, 1, '18:28', 1),
    (@bus_id, @stop_id, 1, '19:08', 1),
    (@bus_id, @stop_id, 1, '19:48', 1),
    (@bus_id, @stop_id, 0, '17:48', 1),
    (@bus_id, @stop_id, 0, '18:28', 1),
    (@bus_id, @stop_id, 0, '19:08', 1),
    (@bus_id, @stop_id, 0, '19:48', 1);

    ---------- STOP 7: Henry St/Van Buren St - 17391 ---------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 17391);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:56', 1),
    (@bus_id, @stop_id, 1, '18:36', 1),
    (@bus_id, @stop_id, 1, '19:16', 1),
    (@bus_id, @stop_id, 1, '19:56', 1),
    (@bus_id, @stop_id, 0, '17:56', 1),
    (@bus_id, @stop_id, 0, '18:36', 1),
    (@bus_id, @stop_id, 0, '19:16', 1),
    (@bus_id, @stop_id, 0, '19:56', 1);

    ---------- STOP 8: Waverly Ave/Walnut Pl - 12553 ---------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 12553);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '17:58', 1),
    (@bus_id, @stop_id, 1, '18:38', 1),
    (@bus_id, @stop_id, 1, '19:18', 1),
    (@bus_id, @stop_id, 1, '19:58', 1),
    (@bus_id, @stop_id, 0, '17:58', 1),
    (@bus_id, @stop_id, 0, '18:38', 1),
    (@bus_id, @stop_id, 0, '19:18', 1),
    (@bus_id, @stop_id, 0, '19:58', 1);

    ---------- STOP 9: E. Adams St/Ostrom Ave' - 12715 ---------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 12715);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '18:00', 1),
    (@bus_id, @stop_id, 1, '18:40', 1),
    (@bus_id, @stop_id, 1, '19:20', 1),
    (@bus_id, @stop_id, 1, '20:00', 1),
    (@bus_id, @stop_id, 0, '18:00', 1),
    (@bus_id, @stop_id, 0, '18:40', 1),
    (@bus_id, @stop_id, 0, '19:20', 1),
    (@bus_id, @stop_id, 0, '20:00', 1);
END

PRINT('STEP 4.3: INSERTING INTO bus_schedules TROLLEY Euclid Loop')
BEGIN /* INSERTING SCHEDULES FOR TROLLEY Euclid Loop */

    SET @bus_id = (SELECT bus_id FROM buses WHERE bus_name = 'Euclid Loop');

    ---------- STOP 1: U College Place - 1683 ----------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1683);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '18:00', 1),
    (@bus_id, @stop_id, 1, '18:30', 1),
    (@bus_id, @stop_id, 1, '19:00', 1),
    (@bus_id, @stop_id, 1, '19:30', 1),
    (@bus_id, @stop_id, 1, '20:00', 1),
    (@bus_id, @stop_id, 1, '20:30', 1),
    (@bus_id, @stop_id, 1, '21:00', 1),
    (@bus_id, @stop_id, 1, '21:30', 1),
    (@bus_id, @stop_id, 1, '22:00', 1),
    (@bus_id, @stop_id, 1, '22:30', 1),
    (@bus_id, @stop_id, 1, '23:00', 1),
    (@bus_id, @stop_id, 1, '23:30', 1),
    (@bus_id, @stop_id, 1, '0:00', 1),
    (@bus_id, @stop_id, 1, '0:30', 1),
    (@bus_id, @stop_id, 1, '1:00', 1),
    (@bus_id, @stop_id, 1, '1:30', 1),
    (@bus_id, @stop_id, 1, '2:00', 1),
    (@bus_id, @stop_id, 1, '2:30', 1),
    (@bus_id, @stop_id, 0, '19:30', 1),
    (@bus_id, @stop_id, 0, '20:00', 1),
    (@bus_id, @stop_id, 0, '20:30', 1),
    (@bus_id, @stop_id, 0, '21:00', 1),
    (@bus_id, @stop_id, 0, '21:30', 1),
    (@bus_id, @stop_id, 0, '22:00', 1),
    (@bus_id, @stop_id, 0, '22:30', 1),
    (@bus_id, @stop_id, 0, '23:00', 1),
    (@bus_id, @stop_id, 0, '23:30', 1),
    (@bus_id, @stop_id, 0, '0:00', 1),
    (@bus_id, @stop_id, 0, '0:30', 1),
    (@bus_id, @stop_id, 0, '1:00', 1),
    (@bus_id, @stop_id, 0, '1:30', 1),
    (@bus_id, @stop_id, 0, '2:00', 1),
    (@bus_id, @stop_id, 0, '2:30', 1);

    ---------- STOP 2: Irving Ave/E. Genesee St - 10203 --------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 10203);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '18:07', 1),
    (@bus_id, @stop_id, 1, '18:37', 1),
    (@bus_id, @stop_id, 1, '19:07', 1),
    (@bus_id, @stop_id, 1, '19:37', 1),
    (@bus_id, @stop_id, 1, '20:07', 1),
    (@bus_id, @stop_id, 1, '20:37', 1),
    (@bus_id, @stop_id, 1, '21:07', 1),
    (@bus_id, @stop_id, 1, '21:37', 1),
    (@bus_id, @stop_id, 1, '22:07', 1),
    (@bus_id, @stop_id, 1, '22:37', 1),
    (@bus_id, @stop_id, 1, '23:07', 1),
    (@bus_id, @stop_id, 1, '23:37', 1),
    (@bus_id, @stop_id, 1, '0:07', 1),
    (@bus_id, @stop_id, 1, '0:37', 1),
    (@bus_id, @stop_id, 1, '1:07', 1),
    (@bus_id, @stop_id, 1, '1:37', 1),
    (@bus_id, @stop_id, 1, '2:07', 1),
    (@bus_id, @stop_id, 1, '2:37', 1),
    (@bus_id, @stop_id, 0, '19:37', 1),
    (@bus_id, @stop_id, 0, '20:07', 1),
    (@bus_id, @stop_id, 0, '20:37', 1),
    (@bus_id, @stop_id, 0, '21:07', 1),
    (@bus_id, @stop_id, 0, '21:37', 1),
    (@bus_id, @stop_id, 0, '22:07', 1),
    (@bus_id, @stop_id, 0, '22:37', 1),
    (@bus_id, @stop_id, 0, '23:07', 1),
    (@bus_id, @stop_id, 0, '23:37', 1),
    (@bus_id, @stop_id, 0, '0:07', 1),
    (@bus_id, @stop_id, 0, '0:37', 1),
    (@bus_id, @stop_id, 0, '1:07', 1),
    (@bus_id, @stop_id, 0, '1:37', 1),
    (@bus_id, @stop_id, 0, '2:07', 1),
    (@bus_id, @stop_id, 0, '2:37', 1);
 
    ---------- STOP 3: E. Genesee St/S. Crouse Ave - 2153 ------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 2153);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '18:08', 1),
    (@bus_id, @stop_id, 1, '18:38', 1),
    (@bus_id, @stop_id, 1, '19:08', 1),
    (@bus_id, @stop_id, 1, '19:38', 1),
    (@bus_id, @stop_id, 1, '20:08', 1),
    (@bus_id, @stop_id, 1, '20:38', 1),
    (@bus_id, @stop_id, 1, '21:08', 1),
    (@bus_id, @stop_id, 1, '21:38', 1),
    (@bus_id, @stop_id, 1, '22:08', 1),
    (@bus_id, @stop_id, 1, '22:38', 1),
    (@bus_id, @stop_id, 1, '23:08', 1),
    (@bus_id, @stop_id, 1, '23:38', 1),
    (@bus_id, @stop_id, 1, '0:08', 1),
    (@bus_id, @stop_id, 1, '0:38', 1),
    (@bus_id, @stop_id, 1, '1:08', 1),
    (@bus_id, @stop_id, 1, '1:38', 1),
    (@bus_id, @stop_id, 1, '2:08', 1),
    (@bus_id, @stop_id, 1, '2:38', 1),
    (@bus_id, @stop_id, 0, '19:38', 1),
    (@bus_id, @stop_id, 0, '20:08', 1),
    (@bus_id, @stop_id, 0, '20:38', 1),
    (@bus_id, @stop_id, 0, '21:08', 1),
    (@bus_id, @stop_id, 0, '21:38', 1),
    (@bus_id, @stop_id, 0, '22:08', 1),
    (@bus_id, @stop_id, 0, '22:38', 1),
    (@bus_id, @stop_id, 0, '23:08', 1),
    (@bus_id, @stop_id, 0, '23:38', 1),
    (@bus_id, @stop_id, 0, '0:08', 1),
    (@bus_id, @stop_id, 0, '0:38', 1),
    (@bus_id, @stop_id, 0, '1:08', 1),
    (@bus_id, @stop_id, 0, '1:38', 1),
    (@bus_id, @stop_id, 0, '2:08', 1),
    (@bus_id, @stop_id, 0, '2:38', 1);

    ---------- STOP 4: E. Genesee St/Westcott St - 1635 --------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1635);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '18:12', 1),
    (@bus_id, @stop_id, 1, '18:42', 1),
    (@bus_id, @stop_id, 1, '19:12', 1),
    (@bus_id, @stop_id, 1, '19:42', 1),
    (@bus_id, @stop_id, 1, '20:12', 1),
    (@bus_id, @stop_id, 1, '20:42', 1),
    (@bus_id, @stop_id, 1, '21:12', 1),
    (@bus_id, @stop_id, 1, '21:42', 1),
    (@bus_id, @stop_id, 1, '22:12', 1),
    (@bus_id, @stop_id, 1, '22:42', 1),
    (@bus_id, @stop_id, 1, '23:12', 1),
    (@bus_id, @stop_id, 1, '23:42', 1),
    (@bus_id, @stop_id, 1, '0:12', 1),
    (@bus_id, @stop_id, 1, '0:42', 1),
    (@bus_id, @stop_id, 1, '1:12', 1),
    (@bus_id, @stop_id, 1, '1:42', 1),
    (@bus_id, @stop_id, 1, '2:12', 1),
    (@bus_id, @stop_id, 1, '2:42', 1),
    (@bus_id, @stop_id, 0, '19:42', 1),
    (@bus_id, @stop_id, 0, '20:12', 1),
    (@bus_id, @stop_id, 0, '20:42', 1),
    (@bus_id, @stop_id, 0, '21:12', 1),
    (@bus_id, @stop_id, 0, '21:42', 1),
    (@bus_id, @stop_id, 0, '22:12', 1),
    (@bus_id, @stop_id, 0, '22:42', 1),
    (@bus_id, @stop_id, 0, '23:12', 1),
    (@bus_id, @stop_id, 0, '23:42', 1),
    (@bus_id, @stop_id, 0, '0:12', 1),
    (@bus_id, @stop_id, 0, '0:42', 1),
    (@bus_id, @stop_id, 0, '1:12', 1),
    (@bus_id, @stop_id, 0, '1:42', 1),
    (@bus_id, @stop_id, 0, '2:12', 1),
    (@bus_id, @stop_id, 0, '2:42', 1);

    ---------- STOP 5: Westcott St/Euclid Ave - 1713 -----------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1713);

    INSERT INTO bus_schedules (schedule_bus_id, schedule_stop_id, schedule_weekday, schedule_bus_arrival, schedule_active)
    VALUES
    (@bus_id, @stop_id, 1, '18:16', 1),
    (@bus_id, @stop_id, 1, '18:46', 1),
    (@bus_id, @stop_id, 1, '19:16', 1),
    (@bus_id, @stop_id, 1, '19:46', 1),
    (@bus_id, @stop_id, 1, '20:16', 1),
    (@bus_id, @stop_id, 1, '20:46', 1),
    (@bus_id, @stop_id, 1, '21:16', 1),
    (@bus_id, @stop_id, 1, '21:46', 1),
    (@bus_id, @stop_id, 1, '22:16', 1),
    (@bus_id, @stop_id, 1, '22:46', 1),
    (@bus_id, @stop_id, 1, '23:16', 1),
    (@bus_id, @stop_id, 1, '23:46', 1),
    (@bus_id, @stop_id, 1, '0:16', 1),
    (@bus_id, @stop_id, 1, '0:46', 1),
    (@bus_id, @stop_id, 1, '1:16', 1),
    (@bus_id, @stop_id, 1, '1:46', 1),
    (@bus_id, @stop_id, 1, '2:16', 1),
    (@bus_id, @stop_id, 1, '2:46', 1),
    (@bus_id, @stop_id, 0, '19:46', 1),
    (@bus_id, @stop_id, 0, '20:16', 1),
    (@bus_id, @stop_id, 0, '20:46', 1),
    (@bus_id, @stop_id, 0, '21:16', 1),
    (@bus_id, @stop_id, 0, '21:46', 1),
    (@bus_id, @stop_id, 0, '22:16', 1),
    (@bus_id, @stop_id, 0, '22:46', 1),
    (@bus_id, @stop_id, 0, '23:16', 1),
    (@bus_id, @stop_id, 0, '23:46', 1),
    (@bus_id, @stop_id, 0, '0:16', 1),
    (@bus_id, @stop_id, 0, '0:46', 1),
    (@bus_id, @stop_id, 0, '1:16', 1),
    (@bus_id, @stop_id, 0, '1:46', 1),
    (@bus_id, @stop_id, 0, '2:16', 1),
    (@bus_id, @stop_id, 0, '2:46', 1);
END

SELECT * FROM bus_schedules

-------------------------------# INSERTING BUS/TROLLEY ROUTES #-----------------------------
DECLARE @schedule_id INT;
DECLARE @i TINYINT;

PRINT('STEP 5.1: INSERTING INTO bus_routes BUS E. Genesee St - Westcott St - 343')
BEGIN /* INSERTING ROUTES FOR BUS E. Genesee St - Westcott St - 343 */

    SET @bus_id = (SELECT bus_id FROM buses WHERE bus_number = 343);
    
    --#TO SCHOOL
    --10203 > 2153 > 1635 > 1713 > 1683

    --#FROM SCHOOL 
    --1683 > 10203 > 2153 > 1635 > 1713

    ---------- STOP 1: U College Place - 1683 ------------------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1683);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            1 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 2: Irving Ave/E. Genesee St - 10203 --------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 10203);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            1 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            2 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 3: E. Genesee St/S. Crouse Ave - 2153 ------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 2153);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            2 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            3 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 4: E. Genesee St/Westcott St - 1635 --------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1635);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            3 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            4 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 5: Westcott St/Euclid Ave - 1713 -----------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1713);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            4 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
  
        SET @i = @i + 1
    END
END

PRINT('STEP 5.2: INSERTING INTO bus_routes BUS East Campus - 243')
BEGIN /* INSERTING ROUTES FOR BUS East Campus - 243 */

    SET @bus_id = (SELECT bus_id FROM buses WHERE bus_number = 243);

    --#TO SCHOOL
    --7748 > 1715 > 10201 > 14928 > 12709 > 17391 > 12553 > 12715 > 1683

    --#FROM SCHOOL 
    --1683 > 7748 > 1715 > 10201 > 14928 > 12709 > 17391 > 12553 > 12715

    ---------- STOP 1: U College Place - 1683 ----------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1683);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            1 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 2: Flint Hall - 7748 ---------------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 7748);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            1 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            2 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 3: Westcott St/Euclid Ave - 1715 -----------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1715);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            2 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            3 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 4: Westcott St/E. Genesee St - 10201 -----------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 10201);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            3 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            4 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 5: University Ave/E. Genesee St - 14928 --------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 14928);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            4 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 6: University Ave/Marshall St - 12709 ----------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 12709);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            6 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 7: Henry St/Van Buren St - 17391 ---------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 17391);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            6 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            7 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 8: Waverly Ave/Walnut Pl - 12553 ---------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 12553);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            7 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            8 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 9: E. Adams St/Ostrom Ave' - 12715 ---------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 12715);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            8 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            59 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END
END

PRINT('STEP 5.3: INSERTING INTO bus_routes TROLLEY Euclid Loop')
BEGIN /* INSERTING ROUTES FOR TROLLEY Euclid Loop */

    SET @bus_id = (SELECT bus_id FROM buses WHERE bus_name = 'Euclid Loop');
    
    --#TO SCHOOL
    --10203 > 2153 > 1635 > 1713 > 1683

    --#FROM SCHOOL 
    --1683 > 10203 > 2153 > 1635 > 1713

    ---------- STOP 1: U College Place - 1683 ------------------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1683);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            1 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 2: Irving Ave/E. Genesee St - 10203 --------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 10203);

    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            1 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            2 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 3: E. Genesee St/S. Crouse Ave - 2153 ------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 2153);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            2 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            3 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 4: E. Genesee St/Westcott St - 1635 --------------------
    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1635);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            3 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            4 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END

    ---------- STOP 5: Westcott St/Euclid Ave - 1713 -----------------------

    SET @stop_id = (SELECT stop_id FROM bus_stops WHERE stop_number = 1713);
    
    SET @i = 0
    WHILE @i <= 1
    BEGIN
        --# TO SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            1 AS route_toschool,  
            @i AS route_weekday,   
            4 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;
        
        --# FROM SCHOOL 
        INSERT INTO bus_routes (route_schedule_id, route_toschool, route_weekday, route_order)
        SELECT 
            schedule_id,       
            0 AS route_toschool,  
            @i AS route_weekday,   
            5 AS route_order      
        FROM 
            bus_schedules
        WHERE schedule_bus_id = @bus_id 
            AND schedule_stop_id = @stop_id
            AND schedule_weekday = @i;

        SET @i = @i + 1
    END
END

SELECT * FROM bus_routes

-------------------------------# INSERTING USER FAVORITES #--------------------------------

PRINT('STEP 6: INSERTING INTO user_favorites')

INSERT INTO user_favorites (user_fav_user_id, user_fav_bus_stop_id, user_fav_bus_id)
    SELECT 
        u.user_id,             
        bs.stop_id,             
        b.bus_id                
    FROM users u
        CROSS JOIN buses b
        CROSS JOIN bus_stops bs
    WHERE 
        u.user_email = 'mikedoe1@example.com' 
        AND b.bus_number IN (343, 6)              
        AND bs.stop_number IN (1683, 1635);     

SELECT * FROM user_favorites

-------------------------------# INSERTING USER NOTIFICATIONS #--------------------------------

PRINT('STEP 7.1: INSERTING INTO user_notifications BUS STOP 1635')
-- BUS STOP 1635 E. Genesee St/Westcott St AT 09:06:00 TO SCHOOL

INSERT INTO user_notifications (not_user_id, not_route_id, not_min_before)
SELECT 
    u.user_id,                     
    br.route_id,                    
    10 AS not_min_before            
FROM users u
    JOIN buses b            ON b.bus_number = 343           
    JOIN bus_stops bs       ON bs.stop_number = 1635         
    JOIN bus_schedules sch  ON sch.schedule_bus_id = b.bus_id AND sch.schedule_stop_id = bs.stop_id AND sch.schedule_bus_arrival = '09:06:00'
    JOIN bus_routes br      ON br.route_schedule_id = sch.schedule_id AND br.route_toschool = 1
WHERE u.user_email = 'mikedoe1@example.com';


PRINT('STEP 7.2: INSERTING INTO user_notifications BUS STOP 1683')
-- BUS STOP 1683 SU College Place AT 09:06:00 FROM SCHOOL

INSERT INTO user_notifications (not_user_id, not_route_id, not_min_before)
SELECT 
    u.user_id,                     
    br.route_id,                    
    10 AS not_min_before            
FROM users u
    JOIN buses b            ON b.bus_number = 343           
    JOIN bus_stops bs       ON bs.stop_number = 1683       
    JOIN bus_schedules sch  ON sch.schedule_bus_id = b.bus_id AND sch.schedule_stop_id = bs.stop_id AND sch.schedule_bus_arrival = '16:20:00'
    JOIN bus_routes br      ON br.route_schedule_id = sch.schedule_id AND br.route_toschool = 0
WHERE u.user_email = 'mikedoe1@example.com';

SELECT * FROM user_notifications

-------------------------------# INSERTING USER FEEDBACKS #--------------------------------

PRINT('STEP 8.1: INSERTING INTO user_feedbacks BUS STOP 1635')
-- BUS STOP 1635 E. Genesee St/Westcott St AT 09:06:00 TO SCHOOL

INSERT INTO user_feedbacks (feed_user_id, feed_route_id, feed_bus_ontime, feed_bus_crowded)
SELECT 
    u.user_id,             
    br.route_id,
    CAST(ROUND(RAND(), 0) AS BIT) AS feed_bus_ontime,  -- Random 0 or 1 for bus on time
    CAST(ROUND(RAND(), 0) AS BIT) AS feed_bus_crowded  -- Random 0 or 1 for bus crowded         
FROM users u
    JOIN buses b            ON b.bus_number = 343           
    JOIN bus_stops bs       ON bs.stop_number = 1635         
    JOIN bus_schedules sch  ON sch.schedule_bus_id = b.bus_id AND sch.schedule_stop_id = bs.stop_id AND sch.schedule_bus_arrival = '09:06:00'
    JOIN bus_routes br      ON br.route_schedule_id = sch.schedule_id AND br.route_toschool = 1

PRINT('STEP 8.2: INSERTING INTO user_feedbacks BUS STOP 1683')
-- BUS STOP 1683 SU College Place AT 09:06:00 FROM SCHOOL

INSERT INTO user_feedbacks (feed_user_id, feed_route_id, feed_bus_ontime, feed_bus_crowded)
SELECT 
    u.user_id,             
    br.route_id,
    CAST(ROUND(RAND(), 0) AS BIT) AS feed_bus_ontime,  -- Random 0 or 1 for bus on time
    CAST(ROUND(RAND(), 0) AS BIT) AS feed_bus_crowded  -- Random 0 or 1 for bus crowded
FROM users u
    JOIN buses b            ON b.bus_number = 343           
    JOIN bus_stops bs       ON bs.stop_number = 1683       
    JOIN bus_schedules sch  ON sch.schedule_bus_id = b.bus_id AND sch.schedule_stop_id = bs.stop_id AND sch.schedule_bus_arrival = '16:20:00'
    JOIN bus_routes br      ON br.route_schedule_id = sch.schedule_id AND br.route_toschool = 0


SELECT * FROM user_feedbacks