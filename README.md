# OnlineTraffic


## Incident Table

CREATE TABLE `incident` (
  `incident_id` int NOT NULL AUTO_INCREMENT,
  `incident_type` varchar(256) NOT NULL,
  `incident_description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`incident_id`)
)

## Ticket Table

CREATE TABLE `ticket_details` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_id` int NOT NULL,
  `incident_id` int NOT NULL,
  `ticket_fine` varchar(256) NOT NULL,
  `ticket_date` varchar(256) NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `incident_id` (`incident_id`),
  CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_details` (`vehicle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`) ON DELETE CASCADE ON UPDATE CASCADE
) 

## User Table

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
)

## Vehicle Table

CREATE TABLE `vehicle_details` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(256) NOT NULL,
  `vehicle_owner` varchar(256) NOT NULL,
  `vehicle_number` varchar(256) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) 