-- Create Gym Database and use it
CREATE DATABASE gym_management;
USE gym_management;

-- Create Login table
CREATE TABLE Login (
    loginId INT PRIMARY KEY,
    password VARCHAR(255),
    login_time DATETIME,
    type VARCHAR(50)
);

-- Create Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Referred_MemberID INT,
    ReferralDiscount INT,
    BMI INT,
    FOREIGN KEY (CustomerID) REFERENCES Login(loginId),
    FOREIGN KEY (Referred_MemberID) REFERENCES Customer(CustomerID)
);

-- Create Feedback table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    CustomerID INT,
    Feedback TEXT,
    Rating INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Trainer table
CREATE TABLE Trainer (
    TrainerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(50),
    FeedbackID INT,
    FOREIGN KEY (TrainerID) REFERENCES Login(loginId),
    FOREIGN KEY (FeedbackID) REFERENCES Feedback(FeedbackID)
);

CREATE TABLE Feedback_Trainer_Association (
    FeedbackID INT,
    TrainerID INT,
    PRIMARY KEY (FeedbackID, TrainerID),
    FOREIGN KEY (FeedbackID) REFERENCES Feedback(FeedbackID),
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID)
);

-- Create BMI table
CREATE TABLE BMI (
    CustomerID INT PRIMARY KEY,
    Height INT,
    Weight INT,
    BMI INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create WorkoutPlan table
CREATE TABLE WorkoutPlan (
    PlanId INT PRIMARY KEY,
    PlanName VARCHAR(100),
    PlanType VARCHAR(50),
    TrainerId INT,
    PlanAmount INT,
    FOREIGN KEY (TrainerId) REFERENCES Trainer(TrainerID)
);

-- Create Membership table
CREATE TABLE Membership (
    CustomerID INT PRIMARY KEY,
    MembershipType VARCHAR(50),
    BaseAmount INT,
    PlanId INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PlanId) REFERENCES WorkoutPlan(PlanId)
);

-- Create ExercisePlan table
CREATE TABLE ExercisePlan (
    ExercisePlanId INT PRIMARY KEY,
    PlanId INT,
    CustomerId INT,
    ExercisePlanName VARCHAR(100),
    Sets INT,
    Repetitions INT,
    FOREIGN KEY (PlanId) REFERENCES WorkoutPlan(PlanId),
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerID)
);

-- Create Exercises table
CREATE TABLE Exercises (
    ExerciseID INT PRIMARY KEY,
    ExercisePlanId INT,
    Name VARCHAR(100),
    Description TEXT,
    DifficultyLevel INT,
    Video BLOB,
    FOREIGN KEY (ExercisePlanId) REFERENCES ExercisePlan(ExercisePlanId)
);

-- Create Session table
CREATE TABLE Session (
    SessionID INT PRIMARY KEY,
    CustomerID INT,
    PlanID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PlanID) REFERENCES WorkoutPlan(PlanId)
);

-- Create NutritionPlan table
CREATE TABLE NutritionPlan (
    PlanID INT PRIMARY KEY,
    Description TEXT
);

-- Create Payment table
CREATE TABLE Payment (
    PaymentId INT PRIMARY KEY,
    CustomerId INT,
    PlanAmount INT,
    BaseAmount INT,
    ReferralDiscount INT,
    FinalAmount INT,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerID)
);