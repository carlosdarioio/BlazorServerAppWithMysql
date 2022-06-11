
Create Table blazor_schedule.available_appointment(
Id INT NOT NULL AUTO_INCREMENT,
Reserved BOOL NULL,
StartDate DATE NOT NULL,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
CreatedAt DATETIME NULL,
UpdatedAt DATETIME NULL,
PRIMARY Key(Id)
);

Create Table blazor_schedule.appointment(
Id INT NOT NULL AUTO_INCREMENT,
AvailableAppointmentId INT NULL,
FullName VARCHAR(100) NOT NULL,
Reason VARCHAR(100) NOT NULL,
StartTime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
CreatedAt DATETIME NULL,
UpdatedAt DATETIME NULL,
PRIMARY Key(Id),
FOREIGN KEY (AvailableAppointmentId) REFERENCES available_appointment(Id) ON DELETE RESTRICT
);