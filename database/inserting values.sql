INSERT INTO USERS
(
    FirstName,
    LastName,
    Email,
    PasswordHash,
    PhoneNumber,
    Role
)
VALUES
(
    'Thabo',
    'Mokoena',
    'thabo.mokoena@raceday.co.za',
    'HASH_ORGANISER_001',
    '0825550101',
    'Organiser'
),
(
    'Lerato',
    'Dlamini',
    'lerato.dlamini@raceday.co.za',
    'HASH_ORGANISER_002',
    '0835550102',
    'Organiser'
),
(
    'Sipho',
    'Ndlovu',
    'sipho.ndlovu@example.com',
    'HASH_PARTICIPANT_001',
    '0845550103',
    'Participant'
),
(
    'Aisha',
    'Naidoo',
    'aisha.naidoo@example.com',
    'HASH_PARTICIPANT_002',
    '0855550104',
    'Participant'
);
GO

INSERT INTO EVENTS
(
    EventName,
    Description,
    EventDate,
    StartTime,
    Venue,
    City,
    Province,
    Status
)
VALUES
(
    'Cape Town Coastal Run',
    'A scenic road race along the Cape Town coastline.',
    '2026-10-18',
    '07:00:00',
    'Green Point Athletics Stadium',
    'Cape Town',
    'Western Cape',
    'Scheduled'
),
(
    'Johannesburg City Challenge',
    'A city running event featuring short and medium-distance races.',
    '2026-11-08',
    '06:30:00',
    'Mary Fitzgerald Square',
    'Johannesburg',
    'Gauteng',
    'Scheduled'
),
(
    'Durban Summer Run',
    'A fast-paced running event along the Durban beachfront.',
    '2026-12-06',
    '06:00:00',
    'Moses Mabhida Stadium',
    'Durban',
    'KwaZulu-Natal',
    'Scheduled'
);
GO

INSERT INTO CATEGORIES
(
    CategoryName,
    DistanceKM,
    ActivityType,
    Description
)
VALUES
(
    '5 KM Fun Run',
    5.00,
    'Running',
    'A beginner-friendly five kilometre road race.'
),
(
    '10 KM Road Race',
    10.00,
    'Running',
    'A standard ten kilometre competitive road race.'
),
(
    '21 KM Half Marathon',
    21.10,
    'Running',
    'A half-marathon distance race for experienced runners.'
),
(
    '5 KM Walk',
    5.00,
    'Walking',
    'A recreational five kilometre walking category.'
);
GO

INSERT INTO EVENT_CATEGORIES
(
    EventID,
    CategoryID,
    EntryFee,
    MaximumParticipants
)
VALUES

-- Cape Town Coastal Run
(1, 1, 120.00, 500),
(1, 2, 180.00, 750),
(1, 3, 300.00, 500),

-- Johannesburg City Challenge
(2, 1, 100.00, 600),
(2, 2, 160.00, 800),
(2, 3, 280.00, 600),

-- Durban Summer Run
(3, 1, 110.00, 500),
(3, 2, 170.00, 700),
(3, 4, 90.00, 300);

GO

INSERT INTO USER_EVENTS
(
    UserID,
    EventID,
    RegistrationDate,
    RaceNumber,
    Status
)
VALUES
(
    3,
    1,
    '2026-08-20 09:15:00',
    'CT-001',
    'Registered'
),
(
    4,
    1,
    '2026-08-21 10:30:00',
    'CT-002',
    'Registered'
),
(
    3,
    2,
    '2026-08-25 08:45:00',
    'JHB-001',
    'Registered'
),
(
    4,
    3,
    '2026-08-28 11:00:00',
    'DBN-001',
    'Registered'
);
GO

INSERT INTO ENROLLMENTS
(
    UserID,
    EventCategoryID,
    EnrollmentDate,
    Status
)
VALUES
(
    3,
    1,
    '2026-08-20 09:20:00',
    'Registered'
),
(
    4,
    2,
    '2026-08-21 10:35:00',
    'Registered'
),
(
    3,
    5,
    '2026-08-25 08:50:00',
    'Registered'
),
(
    4,
    7,
    '2026-08-28 11:05:00',
    'Registered'
);
GO

INSERT INTO RESULTS
(
    EnrollmentID,
    FinishTime,
    Position,
    AveragePace,
    ResultStatus
)
VALUES
(
    1,
    '00:29:45',
    18,
    5.95,
    'Completed'
),
(
    2,
    '00:51:20',
    11,
    5.13,
    'Completed'
);
GO

INSERT INTO ROUTES
(
    EventID,
    RouteName,
    DistanceKM,
    ElevationGain,
    Description,
    MapURL
)
VALUES
(
    1,
    'Atlantic Seaboard Loop',
    10.00,
    85.00,
    'Coastal route through Green Point and along the Atlantic Seaboard.',
    'https://maps.example.com/raceday/cape-town-coastal'
),
(
    1,
    'Table Bay Half Marathon Route',
    21.10,
    145.00,
    'Half-marathon route with coastal views and moderate elevation.',
    'https://maps.example.com/raceday/cape-town-half'
),
(
    2,
    'Johannesburg CBD Circuit',
    10.00,
    120.00,
    'Urban circuit through central Johannesburg.',
    'https://maps.example.com/raceday/johannesburg-city'
),
(
    3,
    'Durban Beachfront Route',
    10.00,
    55.00,
    'Flat beachfront route with a fast finish.',
    'https://maps.example.com/raceday/durban-summer'
);
GO


INSERT INTO WEATHER_INFORMATION
(
    EventID,
    Temperature,
    WeatherCondition,
    WindSpeed,
    Humidity,
    RecordedAt
)
VALUES
(
    1,
    17.50,
    'Partly Cloudy',
    12.50,
    68.00,
    '2026-10-18 06:00:00'
),
(
    1,
    19.00,
    'Sunny',
    14.20,
    62.00,
    '2026-10-18 08:00:00'
),
(
    2,
    15.00,
    'Clear',
    8.00,
    55.00,
    '2026-11-08 05:45:00'
),
(
    3,
    22.50,
    'Sunny',
    6.50,
    70.00,
    '2026-12-06 05:30:00'
);
GO
