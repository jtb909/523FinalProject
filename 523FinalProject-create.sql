Create table Client
(ClientID char(9) primary key,
ClientName varchar(30),
Address varchar(30),
ClientPhone char(10));

Create table Designer
(DesignerID char(9) primary key,
DesignerName varchar(30),
DesignerPhone char(10),
Foreign Key (ClientID) references Client(ClientID));

Create table Job
(JobID char(9) primary key,
StartDate date,
EndDate date,
Location varchar(30),
ContractorsforEachTask varchar(30),
TasksRequired varchar(30),
EstimatedCost decimal(9,2),
ActualCost decimal(9,2),
JobDescription varchar(30),
Foreign Key (ContractorName, TypeOfWork)
references Contractor (ContractorName, TypeOfWork));

Create table Inspection 
(InspectionID integer primary key,
InspectionType varchar(30),
DateInspection date,
DateReInspection date,
DateApprovalReceived date,
Foreign Key (ContractorID) references Contractor (ContractorID));

Create table Contractor
(ContractorID char(9) primary key,
TypeOfWork varchar(30),
ContractorPhone char(10),
ContractorName varchar(30),
Foreign Key (JobID) references Job (JobID));
