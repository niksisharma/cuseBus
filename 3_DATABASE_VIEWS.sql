USE [CuseBus]
GO

-------------------------------# CREATING VIEW TO GET USER INFO #-------------------------------------
DROP VIEW IF EXISTS vGetUserInfo
GO

PRINT('STEP 1.1: CREATING VIEW TO GET USER INFO')
GO

-- =============================================
-- Description: Returns the User's info
-- =============================================
CREATE VIEW vGetUserInfo  
AS  

SELECT 
     user_id        
    ,user_email     
    ,user_lastname + user_firstname AS user_name
    ,user_phone     
    ,user_address   
    ,user_home_lon  
    ,user_home_lat  
FROM  users 

GO

PRINT('STEP 1.2: TESTING THE VIEW TO GET USER INFO')	
GO

SELECT * FROM vGetUserInfo WHERE user_id = 1


-------------------------------# CREATING VIEW TO LIST BUSES #-------------------------------------
DROP VIEW IF EXISTS vGetBuses
GO

PRINT('STEP 2.1: CREATING VIEW TO LIST BUSES')
GO

-- =============================================
-- Description: Returns the list of active Buses
-- =============================================
CREATE VIEW vGetBuses  
AS  

SELECT 
    bus_id,
    bus_name,
    bus_number,
    bus_provider  
FROM  buses  
WHERE bus_active = 1
GO

PRINT('STEP 2.2: TESTING THE VIEW TO LIST BUSES')	
GO

SELECT * FROM vGetBuses


-------------------------------# CREATING VIEW TO GET USER NOTIFICATIONS #-------------------------------------
DROP VIEW IF EXISTS vGetUserNotifications
GO

PRINT('STEP 3.1: CREATING VIEW TO GET USER NOTIFICATIONS')
GO

-- =============================================
-- Description: Returns the notifications from user
-- =============================================
CREATE VIEW vGetUserNotifications 
AS  
SELECT 
    u.user_id, 
    u.user_phone,
    b.bus_name,
    b.bus_number,
    b.bus_provider,
    bs.stop_name,
    bs.stop_number,
    bs.stop_address,                
    br.route_id,                    
    un.not_min_before,
    sch.schedule_bus_arrival  

FROM user_notifications un
    JOIN users u            ON u.user_id = un.not_user_id
    JOIN bus_routes br      ON un.not_route_id = br.route_id
    JOIN bus_schedules sch  ON br.route_schedule_id = sch.schedule_id  
    JOIN buses b            ON sch.schedule_bus_id = b.bus_id          
    JOIN bus_stops bs       ON sch.schedule_stop_id = bs.stop_id     
GO

PRINT('STEP 3.2: TESTING THE VIEW TO GET USER NOTIFICATIONS')	
GO

SELECT * FROM vGetUserNotifications WHERE u.user_id = 1


-------------------------------# CREATING VIEW TO GET USER FEEDBACKS #-------------------------------------
DROP VIEW IF EXISTS vGetUserFeedbacks
GO

PRINT('STEP 4.1: CREATING VIEW TO GET USER FEEDBACKS')
GO

-- =============================================
-- Description: Returns the list of user feedbacks
-- =============================================
CREATE VIEW vGetUserFeedbacks 
AS  

SELECT 
    u.user_id, 
    u.user_email,     
    u.user_lastname + u.user_firstname AS user_name,
    uf.feed_bus_ontime,
    uf.feed_bus_crowded,
    b.bus_id,
    b.bus_name,
    b.bus_number,
    b.bus_provider,
    bs.stop_id,
    bs.stop_name,
    bs.stop_number,
    bs.stop_address,                
    br.route_id,   
    br.route_toschool,                 
    sch.schedule_bus_arrival  

FROM user_feedbacks uf
    JOIN users u            ON u.user_id = uf.feed_user_id
    JOIN bus_routes br      ON uf.feed_route_id = br.route_id
    JOIN bus_schedules sch  ON br.route_schedule_id = sch.schedule_id  
    JOIN buses b            ON sch.schedule_bus_id = b.bus_id          
    JOIN bus_stops bs       ON sch.schedule_stop_id = bs.stop_id  
GO

PRINT('STEP 4.2: TESTING THE VIEW TO GET USER FEEDBACKS')	
GO

SELECT * FROM vGetUserFeedbacks WHERE bus_id = 1


-------------------------------# CREATING VIEW TO GET USER FAVORITES BUSES #-------------------------------------
DROP VIEW IF EXISTS vGetUserFavoriteBuses
GO

PRINT('STEP 5.1: CREATING VIEW TO GET USER FAVORITES BUSES')
GO

-- =============================================
-- Description: Returns the list of user favorite buses
-- =============================================
CREATE VIEW vGetUserFavoriteBuses
AS  

SELECT 
    u.user_id, 
    u.user_email,     
    u.user_lastname + u.user_firstname AS user_name,
    b.bus_id,
    b.bus_name,
    b.bus_number,
    b.bus_provider

FROM user_favorites uf
    JOIN users u       ON u.user_id = uf.user_fav_user_id
    JOIN buses b       ON b.bus_id = uf.user_fav_bus_id          
GO

PRINT('STEP 5.2: TESTING THE VIEW TO GET USER FAVORITES BUSES')	
GO

SELECT * FROM vGetUserFavoriteBuses WHERE bus_id = 1


-------------------------------# CREATING VIEW TO GET USER FAVORITES BUS STOPS #-------------------------------------
DROP VIEW IF EXISTS vGetUserFavoriteBusStops
GO

PRINT('STEP 5.1: CREATING VIEW TO GET USER FAVORITES BUS STOPS')
GO

-- =============================================
-- Description: Returns the list of user favorite buses
-- =============================================
CREATE VIEW vGetUserFavoriteBusStops
AS  

SELECT 
    u.user_id, 
    u.user_email,     
    u.user_lastname + u.user_firstname AS user_name,
    bs.stop_id,
    bs.stop_name,
    bs.stop_number,
    bs.stop_address,   
    bs.stop_longitude,
    bs.stop_latitude

FROM user_favorites uf
    JOIN users u       ON u.user_id = uf.user_fav_user_id
    JOIN bus_stops bs  ON bs.stop_id = uf.user_fav_bus_stop_id         
GO

PRINT('STEP 5.2: TESTING THE VIEW TO GET USER FAVORITES BUS STOPS')	
GO

SELECT * FROM vGetUserFavoriteBusStops WHERE bus_id = 1