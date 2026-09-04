# RaceDay Database – PROG6212 POE

## Overview

RaceDay is a SQL Server database project developed for the PROG6212 Programming 2A Portfolio of Evidence (POE).

The database is designed to manage race-day information, including:

- Users
- Race events
- Race categories
- User event registrations
- Event categories
- Participant enrolments
- Race results
- Routes
- Weather information

The database uses primary keys, foreign keys, NOT NULL, UNIQUE, DEFAULT, and CHECK constraints to maintain data integrity.

---

## Database Name

The database is called:

`RaceWays`

---

## Database Tables

The database contains the following tables:

| Table | Description |
|---|---|
| USERS | Stores organiser and participant information. |
| EVENTS | Stores information about race events. |
| CATEGORIES | Stores the different race categories. |
| USER_EVENTS | Links users to the events they register for. |
| EVENT_CATEGORIES | Links events to the categories offered at each event. |
| ENROLLMENTS | Stores participant enrolments for event categories. |
| RESULTS | Stores participant race results. |
| ROUTES | Stores route information for race events. |
| WEATHER_INFORMATION | Stores weather information for race events. |

---

## Database Relationships

The database contains the following relationships:

```text
USERS
|
+---- USER_EVENTS ----> EVENTS
|
+---- ENROLLMENTS ----> EVENT_CATEGORIES ----> EVENTS
|
+----> CATEGORIES

ENROLLMENTS ----> RESULTS

EVENTS ----> ROUTES

EVENTS ----> WEATHER_INFORMATION
