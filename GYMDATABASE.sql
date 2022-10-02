create database GymDatabase;
use GymDatabase;

CREATE TABLE admin_gym
(
  AdminId INT NOT NULL,
  Complete_Name VARCHAR(45) NOT NULL,
  Contact INT NOT NULL,
  Address VARCHAR(45) NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Password INT NOT NULL,
  Role VARCHAR(45) NOT NULL,
  PRIMARY KEY (AdminId)
);

CREATE TABLE workout_gym
(
  WorkOutId INT NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Description VARCHAR(45) NOT NULL,
  PRIMARY KEY (WorkOutId)
);

CREATE TABLE diet_gym
(
  DietId INT NOT NULL,
  Dietician_Name VARCHAR(45) NOT NULL,
  Diet_Goal VARCHAR(45) NOT NULL,
  Contact_No INT NOT NULL,
  PRIMARY KEY (DietId)
);

CREATE TABLE medication_gym
(
  MedicationId INT NOT NULL,
  Doctor VARCHAR(45) NOT NULL,
  Medication VARCHAR(45) NOT NULL,
  PRIMARY KEY (MedicationId)
);

CREATE TABLE trainer_gym
(
  TrainerId INT NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NOT NULL,
  Contact_No VARCHAR(45) NOT NULL,
  Address VARCHAR(45) NOT NULL,
  WorkOutId INT NOT NULL,
  AdminId INT NOT NULL,
  PRIMARY KEY (TrainerId),
  FOREIGN KEY (WorkOutId) REFERENCES workout_gym(WorkOutId),
  FOREIGN KEY (AdminId) REFERENCES admin_gym(AdminId)
);

CREATE TABLE member_gym
(
  MemberId INT NOT NULL,
  Complete_Name INT NOT NULL,
  Contact_No INT NOT NULL,
  Address INT NOT NULL,
  Email INT NOT NULL,
  Phone_No INT NOT NULL,
  Joining_Date INT NOT NULL,
  Completion_Date INT NOT NULL,
  Gender INT NOT NULL,
  AdminId INT NOT NULL,
  DietId INT NOT NULL,
  MedicationId INT NOT NULL,
  TrainerId INT NOT NULL,
  PRIMARY KEY (MemberId),
  FOREIGN KEY (AdminId) REFERENCES admin_gym(AdminId),
  FOREIGN KEY (DietId) REFERENCES diet_gym(DietId),
  FOREIGN KEY (MedicationId) REFERENCES medication_gym(MedicationId),
  FOREIGN KEY (TrainerId) REFERENCES trainer_gym(TrainerId)
);

CREATE TABLE membershiptype_gym
(
  TypeId INT NOT NULL,
  MemberId INT NOT NULL,
  Membership_Type VARCHAR(45) NOT NULL,
  Amount_Paid INT NOT NULL,
  PRIMARY KEY (TypeId),
  FOREIGN KEY (MemberId) REFERENCES member_gym(MemberId)
);