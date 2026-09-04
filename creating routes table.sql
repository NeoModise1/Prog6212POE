CREATE TABLE RESULTS
(
    ResultID INT IDENTITY(1,1) NOT NULL,
    EnrollmentID INT NOT NULL,
    FinishTime TIME NOT NULL,
    Position INT NOT NULL,
    AveragePace DECIMAL(6,2) NOT NULL,
    ResultStatus NVARCHAR(30) NOT NULL DEFAULT 'Completed',
    RecordedAt DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT PK_RESULTS PRIMARY KEY (ResultID),

    CONSTRAINT UQ_RESULTS_Enrollment
        UNIQUE (EnrollmentID),

    CONSTRAINT FK_RESULTS_Enrollment
        FOREIGN KEY (EnrollmentID)
        REFERENCES ENROLLMENTS(EnrollmentID)
);