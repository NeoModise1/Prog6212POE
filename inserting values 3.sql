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

INSERT INTO dbo.USER_EVENTS
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