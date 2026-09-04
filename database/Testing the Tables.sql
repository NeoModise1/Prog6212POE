
SELECT
    u.UserID,
    u.FirstName,
    u.LastName,
    u.Role,

    e.EventID,
    e.EventName,
    e.EventDate,

    c.CategoryName,
    c.DistanceKM,

    ec.EntryFee,
    ec.MaximumParticipants,

    en.EnrollmentID,
    en.EnrollmentDate,
    en.Status AS EnrollmentStatus,

    r.FinishTime,
    r.Position,
    r.AveragePace,
    r.ResultStatus

FROM dbo.ENROLLMENTS AS en

INNER JOIN dbo.USERS AS u
    ON en.UserID = u.UserID

INNER JOIN dbo.EVENT_CATEGORIES AS ec
    ON en.EventCategoryID = ec.EventCategoryID

INNER JOIN dbo.EVENTS AS e
    ON ec.EventID = e.EventID

INNER JOIN dbo.CATEGORIES AS c
    ON ec.CategoryID = c.CategoryID

LEFT JOIN dbo.RESULTS AS r
    ON en.EnrollmentID = r.EnrollmentID

ORDER BY
    e.EventDate,
    r.Position;
GO