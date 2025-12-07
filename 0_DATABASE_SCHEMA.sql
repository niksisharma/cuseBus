
IF NOT EXISTS(SELECT * FROM sys.databases WHERE NAME = 'CuseBus')
    CREATE DATABASE CuseBus
GO

USE [CuseBus]
GO

---DOWN METADATA
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_feedbacks_feed_user_id')
    ALTER TABLE user_feedbacks DROP CONSTRAINT fk_user_feedbacks_feed_user_id 
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_feedbacks_feed_route_id')
    ALTER TABLE user_feedbacks DROP CONSTRAINT fk_user_feedbacks_feed_route_id 

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_notifications_not_user_id')
    ALTER TABLE user_notifications DROP CONSTRAINT fk_user_notifications_not_user_id 
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_notifications_not_route_id')
    ALTER TABLE user_notifications DROP CONSTRAINT fk_user_notifications_not_route_id

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_routes_route_schedule_id')
    ALTER TABLE bus_routes DROP CONSTRAINT fk_routes_route_schedule_id  

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_bus_schedules_schedule_bus_id')
    ALTER TABLE bus_schedules DROP CONSTRAINT fk_bus_schedules_schedule_bus_id 
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_bus_schedules_schedule_stop_id')
    ALTER TABLE bus_schedules DROP CONSTRAINT fk_bus_schedules_schedule_stop_id 

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'uq_user_favorites_unique_ids')
    ALTER TABLE user_favorites DROP CONSTRAINT uq_user_favorites_unique_ids 
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_favorites_user_fav_user_id')
    ALTER TABLE user_favorites DROP CONSTRAINT fk_user_favorites_user_fav_user_id 
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_favorites_user_fav_bus_id')
    ALTER TABLE user_favorites DROP CONSTRAINT fk_user_favorites_user_fav_bus_id 
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'fk_user_favorites_user_fav_stop_id')
    ALTER TABLE user_favorites DROP CONSTRAINT fk_user_favorites_user_fav_stop_id 

GO

DROP TABLE IF EXISTS user_feedbacks
DROP TABLE IF EXISTS user_notifications
DROP TABLE IF EXISTS bus_routes
DROP TABLE IF EXISTS bus_schedules
DROP TABLE IF EXISTS user_favorites
DROP TABLE IF EXISTS bus_stops
DROP TABLE IF EXISTS buses
DROP TABLE IF EXISTS users
GO


---UP METADATA

GO
CREATE TABLE users
(
    user_id         INT             NOT NULL IDENTITY PRIMARY KEY
    ,user_email     VARCHAR(30)     NOT NULL UNIQUE
    ,user_password  VARCHAR(10)     NOT NULL
    ,user_firstname VARCHAR(25)	    NOT NULL		
    ,user_lastname 	VARCHAR(25)	    NOT NULL	
    ,user_phone     VARCHAR(15)     NOT NULL
    ,user_address   VARCHAR(50)     NOT NULL
    ,user_home_lon  DECIMAL(10,7)   NOT NULL
    ,user_home_lat  DECIMAL(10,7)   NOT NULL
)

GO
CREATE TABLE buses
(
    bus_id        INT          NOT NULL IDENTITY PRIMARY KEY
    ,bus_name     VARCHAR(30)  NOT NULL UNIQUE
    ,bus_number   INT          NOT NULL UNIQUE
    ,bus_provider VARCHAR(20)  NOT NULL
    ,bus_active   BIT          NOT NULL
)

GO
CREATE TABLE bus_stops
(
    stop_id         INT            NOT NULL IDENTITY PRIMARY KEY
    ,stop_number    INT            NOT NULL UNIQUE
    ,stop_name      VARCHAR(30)    NOT NULL
    ,stop_address   VARCHAR(50)    NOT NULL
    ,stop_longitude DECIMAL(10,7)  NOT NULL
    ,stop_latitude  DECIMAL(10,7)  NOT NULL
    ,stop_active    BIT            NOT NULL
)

GO
CREATE TABLE user_favorites
(
    user_fav_id             INT  NOT NULL IDENTITY PRIMARY KEY
    ,user_fav_user_id       INT  NOT NULL
    ,user_fav_bus_stop_id   INT  NULL
    ,user_fav_bus_id        INT  NULL
)

GO
ALTER TABLE user_favorites
    ADD CONSTRAINT fk_user_favorites_user_fav_user_id FOREIGN KEY(user_fav_user_id) 
            REFERENCES users(user_id),
        CONSTRAINT fk_user_favorites_user_fav_bus_id FOREIGN KEY(user_fav_bus_id) 
            REFERENCES buses(bus_id),
        CONSTRAINT fk_user_favorites_user_fav_stop_id FOREIGN KEY(user_fav_bus_stop_id) 
            REFERENCES bus_stops(stop_id),
        CONSTRAINT uq_user_favorites_unique_ids UNIQUE (user_fav_user_id, user_fav_bus_stop_id, user_fav_bus_id)

GO
CREATE TABLE bus_schedules
(
    schedule_id            INT  NOT NULL IDENTITY PRIMARY KEY
    ,schedule_bus_id       INT  NOT NULL
    ,schedule_stop_id      INT  NOT NULL
    ,schedule_weekday      BIT  NOT NULL
    ,schedule_bus_arrival  TIME NOT NULL
    ,schedule_active       BIT  NOT NULL
)

GO
ALTER TABLE bus_schedules
    ADD CONSTRAINT fk_bus_schedules_schedule_bus_id FOREIGN KEY(schedule_bus_id) 
            REFERENCES buses(bus_id),
        CONSTRAINT fk_bus_schedules_schedule_stop_id FOREIGN KEY(schedule_stop_id) 
            REFERENCES bus_stops(stop_id)

GO
CREATE TABLE bus_routes
(
    route_id            INT     NOT NULL IDENTITY PRIMARY KEY
    ,route_schedule_id  INT     NOT NULL
    ,route_toschool     BIT     NOT NULL
    ,route_weekday      BIT     NOT NULL
    ,route_order        TINYINT NOT NULL
)

GO
ALTER TABLE bus_routes
    ADD CONSTRAINT fk_routes_route_schedule_id  FOREIGN KEY(route_schedule_id) 
        REFERENCES bus_schedules(schedule_id)

GO
CREATE TABLE user_notifications
(
    not_id              INT  NOT NULL IDENTITY PRIMARY KEY
    ,not_user_id        INT  NOT NULL
    ,not_route_id       INT  NOT NULL
    ,not_min_before     INT  NOT NULL
)

GO
ALTER TABLE user_notifications
    ADD CONSTRAINT fk_user_notifications_not_user_id FOREIGN KEY(not_user_id) 
            REFERENCES users(user_id),
        CONSTRAINT fk_user_notifications_not_route_id  FOREIGN KEY(not_route_id) 
            REFERENCES bus_routes(route_id)

GO
CREATE TABLE user_feedbacks
(
    feed_id             INT  NOT NULL IDENTITY PRIMARY KEY
    ,feed_user_id       INT  NOT NULL
    ,feed_route_id   INT  NOT NULL
    ,feed_bus_ontime    BIT NOT NULL
    ,feed_bus_crowded   BIT NOT NULL
)

GO
ALTER TABLE user_feedbacks
    ADD CONSTRAINT fk_user_feedbacks_feed_user_id FOREIGN KEY(feed_user_id) 
            REFERENCES users(user_id),
        CONSTRAINT fk_user_feedbacks_feed_route_id FOREIGN KEY(feed_route_id) 
            REFERENCES bus_routes(route_id)
