USE [CuseBus]
GO

-------------------------------# CREATING PROCEDURE TO ADD A NEW USER #-------------------------------------

DROP PROCEDURE IF EXISTS uspAddUser
GO

PRINT('STEP 1.1: CREATING PROCEDURE TO ADD A NEW USER')

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description: Add a new user in the database
-- and return the user_id created
-- =============================================
CREATE PROCEDURE uspAddUser
(
    @user_email     	VARCHAR(30),
    @user_password  	VARCHAR(10),
    @user_firstname 	VARCHAR(25),
    @user_lastname  	VARCHAR(25),
    @user_phone     	VARCHAR(15),
    @user_address   	VARCHAR(50),
    @user_home_lon   	DECIMAL(10,7),
    @user_home_lat   	DECIMAL(10,7),
	@user_id     		INT OUTPUT -- Output parameter to return the new user_id
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO users (
            user_email,
            user_password,
            user_firstname,
            user_lastname,
            user_phone,
            user_address,
            user_home_lon,
            user_home_lat
        )
        VALUES (
            @user_email,
            @user_password,
            @user_firstname,
            @user_lastname,
            @user_phone,
            @user_address,
            @user_home_lon,
            @user_home_lat
        )

        SET @user_id = SCOPE_IDENTITY();

        PRINT 'User added successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
        SET @user_id = NULL;
    END CATCH
END

PRINT('STEP 1.2: TESTING THE PROCEDURE TO ADD A NEW USER')
GO

DECLARE @user_email     	VARCHAR(30)
DECLARE @user_password  	VARCHAR(10)
DECLARE @user_firstname 	VARCHAR(25)
DECLARE @user_lastname  	VARCHAR(25)
DECLARE @user_phone     	VARCHAR(15)
DECLARE @user_address   	VARCHAR(50)
DECLARE @user_home_lon  	DECIMAL(10,7)
DECLARE @user_home_lat  	DECIMAL(10,7)
DECLARE @user_id     		INT

SET @user_email    	= 'john.doe@example.com'
SET @user_password 	= 'secure123'
SET @user_firstname	= 'John'
SET @user_lastname 	= 'Doe'
SET @user_phone    	= '(315) 555-0231'
SET @user_address  	= '123 Elm Street'
SET @user_home_lon 	= -76.1651
SET @user_home_lat 	= 43.0481

EXEC uspAddUser @user_email, @user_password, @user_firstname, @user_lastname, @user_phone, @user_address, @user_home_lon, @user_home_lat, @user_id OUTPUT

PRINT 'New User ID: ' + CAST(@user_id AS VARCHAR);
GO


-------------------------------# CREATING PROCEDURE TO FAVORITE A BUS OR BUS STOP  #-------------------------------------

DROP PROCEDURE IF EXISTS uspAddUserFavorite
GO

PRINT('STEP 2.1: CREATING PROCEDURE TO FAVORITE A BUS OR BUS STOP')
GO

-- =============================================
-- Description: Allows the user to favorites a bus 
-- or bus stop
-- =============================================
CREATE PROCEDURE uspAddUserFavorite
(
    @user_id       			INT,
    @user_fav_bus_stop_id   INT = NULL, 
    @user_fav_bus_id        INT = NULL 
) 
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO user_favorites (
            user_fav_user_id,
            user_fav_bus_stop_id,
            user_fav_bus_id
        )
        VALUES (
            @user_id,
            @user_fav_bus_stop_id,
            @user_fav_bus_id
        )

        PRINT 'User favorite added successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
    END CATCH
END

PRINT('STEP 2.2: TESTING THE PROCEDURE TO FAVORITE A BUS OR BUS STOP')
GO

DECLARE @user_id 				INT
DECLARE @user_fav_bus_stop_id 	INT
DECLARE @user_fav_bus_id 		INT

SELECT 
	@user_id = u.user_id,             
	@user_fav_bus_stop_id = bs.stop_id,             
	@user_fav_bus_id = b.bus_id                
FROM users u
	CROSS JOIN buses b
	CROSS JOIN bus_stops bs
WHERE 
	u.user_email = 'john.doe@example.com' 
	AND b.bus_number IN (343, 6)              
	AND bs.stop_number IN (1683, 1635)

EXEC uspAddUserFavorite @user_id, @user_fav_bus_stop_id, @user_fav_bus_id


-------------------------------# CREATING PROCEDURE TO CREATE A NEW USER NOTIFICATION #-------------------------------------
DROP PROCEDURE IF EXISTS uspAddUserNotification
GO

PRINT('STEP 3.1: CREATING PROCEDURE TO CREATE A NEW USER NOTIFICATION')
GO
-- =============================================
-- Description: Allows the user to create a new 
-- notification to receive in his phone
-- =============================================
CREATE PROCEDURE uspAddUserNotification
(
    @user_id        	INT,
    @not_route_id       INT,
    @not_min_before     INT
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO user_notifications (
            not_user_id,
            not_route_id,
            not_min_before
        )
        VALUES (
            @user_id,
            @not_route_id,
            @not_min_before
        )

        PRINT 'User notification added successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
    END CATCH
END


PRINT('STEP 3.2: TESTING THE PROCEDURE TO CREATE A NEW USER NOTIFICATION')
GO

DECLARE @user_id 		INT
DECLARE @not_route_id 	INT
DECLARE @not_min_before INT

SELECT 
    @user_id = u.user_id,                     
    @not_route_id = br.route_id,                    
    @not_min_before = 10  
FROM users u
    JOIN buses b            ON b.bus_number = 343           
    JOIN bus_stops bs       ON bs.stop_number = 1635         
    JOIN bus_schedules sch  ON sch.schedule_bus_id = b.bus_id AND sch.schedule_stop_id = bs.stop_id AND sch.schedule_bus_arrival = '09:06:00'
    JOIN bus_routes br      ON br.route_schedule_id = sch.schedule_id AND br.route_toschool = 1
WHERE u.user_email = 'john.doe@example.com';

EXEC uspAddUserNotification @user_id, @not_route_id, @not_min_before


-------------------------------# CREATING PROCEDURE TO CREATE A NEW USER FEEDBACK #-------------------------------------
DROP PROCEDURE IF EXISTS uspAddUserFeedback
GO

PRINT('STEP 4.1: CREATING PROCEDURE TO CREATE A NEW USER FEEDBACK')
GO
-- =============================================
-- Description: Allows the user to create a new 
-- feedback about a bus route
-- =============================================
CREATE PROCEDURE uspAddUserFeedback
(
    @user_id       		INT,
    @feed_route_id      INT,
    @feed_bus_ontime    BIT,
    @feed_bus_crowded   BIT
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO user_feedbacks (
            feed_user_id,
            feed_route_id,
            feed_bus_ontime,
            feed_bus_crowded
        )
        VALUES (
            @user_id,
            @feed_route_id,
            @feed_bus_ontime,
            @feed_bus_crowded
        )

        PRINT 'User feedback added successfully';
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
    END CATCH
END

PRINT('STEP 4.2: TESTING PROCEDURE TO CREATE A NEW USER FEEDBACK')
GO

DECLARE @user_id INT
DECLARE @feed_route_id INT
DECLARE @feed_bus_ontime BIT
DECLARE @feed_bus_crowded BIT

SELECT 
    @user_id = u.user_id,                     
    @feed_route_id = br.route_id,
    @feed_bus_ontime = CAST(ROUND(RAND(), 0) AS BIT),  -- Random value for feed_bus_ontime
    @feed_bus_crowded = CAST(ROUND(RAND(), 0) AS BIT)  -- Random value for feed_bus_crowded
FROM users u
    JOIN buses b            ON b.bus_number = 343           
    JOIN bus_stops bs       ON bs.stop_number = 1635         
    JOIN bus_schedules sch  ON sch.schedule_bus_id = b.bus_id AND sch.schedule_stop_id = bs.stop_id AND sch.schedule_bus_arrival = '09:06:00'
    JOIN bus_routes br      ON br.route_schedule_id = sch.schedule_id AND br.route_toschool = 1
WHERE u.user_email = 'john.doe@example.com'

EXEC uspAddUserFeedback @user_id, @feed_route_id, @feed_bus_ontime, @feed_bus_crowded


-------------------------------# CREATING PROCEDURE TO GET THE BUS SCHEDULES  #-------------------------------------
DROP PROCEDURE IF EXISTS uspGetBusSchedules
GO

PRINT('STEP 5.1: CREATING PROCEDURE TO GET THE BUS SCHEDULES')
GO
-- =============================================
-- Description: Returns the Bus Schedules filtering by 
-- if route it to/from school and/or by bus and/or 
-- bus stop and/or if is weekday or weekend and/or
-- time, if no filter provided it will return all
-- bus schedules in database
-- =============================================
CREATE PROCEDURE uspGetBusSchedules
(
    @route_toschool BIT = NULL,
    @bus_id         INT = NULL,
    @stop_id        INT = NULL,
	@route_weekday  BIT = NULL,
    @time       	TIME = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

	BEGIN TRY
		DECLARE @SQL VARCHAR(MAX)

		SET @SQL = 	'SELECT 
						r.route_toschool,
						b.bus_id,
						bs.stop_id, 
						s.schedule_bus_arrival,
						r.route_order

					FROM bus_routes r
						JOIN bus_schedules s    ON r.route_schedule_id = s.schedule_id
						JOIN bus_stops bs       ON bs.stop_id = s.schedule_stop_id
						JOIN buses b            ON b.bus_id  = s.schedule_bus_id

					WHERE 1=1 '			
		
		IF (@route_toschool > 0)
			SET @SQL = @SQL + ' AND r.route_toschool = ' + CONVERT(VARCHAR, @route_toschool) + ' '
		
		IF (@bus_id > 0)
			SET @SQL = @SQL + ' AND b.bus_id = ' + CONVERT(VARCHAR, @bus_id) + ' '

		IF (@stop_id > 0)
			SET @SQL = @SQL + ' AND bs.stop_id = ' + CONVERT(VARCHAR, @stop_id) + ' '

		IF (@time IS NOT NULL)
			SET @SQL = @SQL + ' AND s.schedule_bus_arrival >= CONVERT(TIME, ''' + CONVERT(VARCHAR, @time) + ''' , 108) ' 

		IF (@route_weekday IS NOT NULL)
			SET @SQL = @SQL + ' AND r.route_weekday = ' + CONVERT(VARCHAR, @route_weekday) + ' '

		SET @SQL = @SQL + ' ORDER BY r.route_toschool, s.schedule_bus_arrival, r.route_order '

		--PRINT (@SQL)
		EXEC(@SQL)
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
    END CATCH
END
GO

PRINT('STEP 5.2: TESTING PROCEDURE TO GET THE BUS SCHEDULES')
GO

DECLARE @route_toschool BIT
DECLARE @bus_id 		INT
DECLARE @stop_id 		INT
DECLARE @route_weekday 	BIT
DECLARE @datetime 		DATETIME

SET @route_toschool = 0
SET @bus_id = 0
SET @stop_id = 0
SET @route_weekday = 1
SET @datetime = NULL

EXECUTE [dbo].[uspGetBusSchedules] @route_toschool, @bus_id, @stop_id, @route_weekday, @datetime


-------------------------------# CREATING PROCEDURE TO GET THE BUS STOPS  #-------------------------------------
DROP PROCEDURE IF EXISTS uspGetBusStops
GO

PRINT('STEP 6.1: CREATING PROCEDURE TO GET THE BUS STOPS')
GO

-- =============================================
-- Description: Returns the Bus Stops filtering by 
-- if route it to/from school and/or by bus 
-- if no filter provided it will return all
-- bus stops in database
-- =============================================
CREATE PROCEDURE uspGetBusStops
(
    @route_toschool BIT = NULL,
    @bus_id         INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON

	BEGIN TRY
		DECLARE  @SQL	VARCHAR(MAX)

		SET @SQL = 	'SELECT 
						r.route_toschool,
						r.route_order,
						bs.stop_id,
						bs.stop_name,
						bs.stop_number,
						bs.stop_address,
						bs.stop_longitude,
						bs.stop_latitude,   
						b.bus_id,
						b.bus_name,
						b.bus_number,
						b.bus_provider   

					FROM bus_stops bs
						JOIN bus_schedules s    ON bs.stop_id = s.schedule_stop_id
						JOIN buses b            ON b.bus_id  = s.schedule_bus_id
						JOIN bus_routes r       ON r.route_schedule_id = s.schedule_id
						
					WHERE 1=1 
					
						AND b.bus_active = 1
						AND bs.stop_active = 1
						AND s.schedule_active = 1'		
		
		IF (@route_toschool > 0)
			SET @SQL = @SQL + ' AND r.route_toschool = ' + CONVERT(VARCHAR, @route_toschool) + ' '
		
		IF (@bus_id > 0)
			SET @SQL = @SQL + ' AND b.bus_id = ' + CONVERT(VARCHAR, @bus_id) + ' '

		SET @SQL = @SQL + ' ORDER BY r.route_order '

		--PRINT (@SQL)
		EXEC(@SQL)
	END TRY
    BEGIN CATCH
        PRINT 'An error occurred: ' + ERROR_MESSAGE();
    END CATCH
END
GO

PRINT('STEP 6.2: TESTING PROCEDURE TO GET THE BUS STOPS')
GO

DECLARE @route_toschool BIT
DECLARE @bus_id 		INT

SET @route_toschool = 1
SET @bus_id = 3

EXECUTE [dbo].[uspGetBusStops] @route_toschool, @bus_id
GO
