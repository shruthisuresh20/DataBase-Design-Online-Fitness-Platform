-- Populating Login table 
INSERT INTO Login (loginId, password, login_time, type) VALUES 
(1001, 'trainer1_password', '2024-03-11 09:15:32', 'Trainer'),
(1002, 'trainer2_password', '2024-03-11 09:15:32', 'Trainer'),
(1003, 'trainer3_password', '2024-03-11 09:15:32', 'Trainer'),
(1004, 'trainer4_password', '2024-03-11 09:15:32', 'Trainer'),
(1005, 'trainer5_password', '2024-03-11 09:15:32', 'Trainer'),
(1006, 'trainer6_password', '2024-03-11 09:15:32', 'Trainer'),
(1007, 'trainer7_password', '2024-03-11 09:15:32', 'Trainer'),
(1008, 'customer1_password', '2024-03-11 09:15:32', 'Customer'),
(1009, 'customer2_password', '2024-03-11 09:15:32', 'Customer'),
(1010, 'customer3_password', '2024-03-11 09:15:32', 'Customer'),
(1011, 'customer4_password', '2024-03-11 09:15:32', 'Customer'),
(1012, 'customer5_password', '2024-03-11 09:15:32', 'Customer'),
(1013, 'customer6_password', '2024-03-11 09:15:32', 'Customer'),
(1014, 'customer7_password', '2024-03-11 09:15:32', 'Customer');

-- Populating Customer table
INSERT INTO Customer (CustomerID, Name, Referred_MemberID, ReferralDiscount, BMI) VALUES 
(1008, 'John Doe', NULL, 0, 23),
(1009, 'Alice Smith', 1008, 5, 25),
(1010, 'Bob Johnson', 1009, 10, 27),
(1011, 'Charlie Brown', 1010, 0, 22),
(1012, 'David Lee', 1011, 0, 24),
(1013, 'Emily Clark', 1012, 0, 21),
(1014, 'Frank Harris', 1013, 0, 26);

-- Populating Trainer table 
INSERT INTO Trainer (TrainerID, Name, Specialization, FeedbackID) VALUES 
(1001, 'Michael Smith', 'Strength Training', NULL),
(1002, 'Jessica Johnson', 'Yoga', NULL),
(1003, 'Robert Williams', 'Cardio', NULL),
(1004, 'Emily Davis', 'Pilates', NULL),
(1005, 'Christopher Brown', 'CrossFit', NULL),
(1006, 'Jennifer Miller', 'Zumba', NULL),
(1007, 'David Wilson', 'Functional Training', NULL);

-- Populating Feedback table 
INSERT INTO Feedback (FeedbackID, CustomerID, Feedback, Rating) VALUES 
(1001, 1008, 'Great experience at the gym!', 5),
(1002, 1009, 'Trainers are very helpful and motivating.', 4),
(1003, 1010, 'Love the variety of workout options.', 5),
(1004, 1011, 'Clean and well-maintained facilities.', 4),
(1005, 1012, 'Could improve on the availability of equipment.', 3),
(1006, 1013, 'Friendly staff and welcoming atmosphere.', 5),
(1007, 1014, 'Enjoyed the group workout classes.', 4);

-- Populating Feedback_Trainer_Association table 
INSERT INTO Feedback_Trainer_Association (FeedbackID, TrainerID) VALUES 
(1001, 1001),
(1002, 1002),
(1003, 1003),
(1004, 1004),
(1005, 1005),
(1006, 1006),
(1007, 1007);

-- Populating BMI table 
INSERT INTO BMI (CustomerID, Height, Weight, BMI) VALUES 
(1008, 170, 70, 24),
(1009, 165, 60, 22),
(1010, 175, 80, 26),
(1011, 160, 55, 21),
(1012, 180, 70, 22),
(1013, 168, 65, 23),
(1014, 172, 75, 25);

-- Populating WorkoutPlan table
INSERT INTO WorkoutPlan (PlanId, PlanName, PlanType, TrainerId, PlanAmount) VALUES 
(2001, 'Strength Training Program', 'Strength Training', 1001, 50),
(2002, 'Yoga for Beginners', 'Yoga', 1002, 40),
(2003, 'Cardio Blast', 'Cardio', 1003, 45),
(2004, 'Pilates Core Workouts', 'Pilates', 1004, 55),
(2005, 'CrossFit Intensity', 'CrossFit', 1005, 60),
(2006, 'Zumba Dance Fitness', 'Zumba', 1006, 40),
(2007, 'Functional Training Circuit', 'Functional Training', 1007, 65);

-- Populating Membership table 
INSERT INTO Membership (CustomerID, MembershipType, BaseAmount, PlanId) VALUES 
(1008, 'Gold', 60, 2001),
(1009, 'Silver', 50, 2002),
(1010, 'Platinum', 70, 2003),
(1011, 'Bronze', 40, 2004),
(1012, 'Gold', 60, 2005),
(1013, 'Silver', 50, 2006),
(1014, 'Platinum', 70, 2007);

-- Populating ExercisePlan table
INSERT INTO ExercisePlan (ExercisePlanId, PlanId, CustomerId, ExercisePlanName, Sets, Repetitions) VALUES 
(3001, 2001, 1008, 'Upper Body Strength', 3, 12),
(3002, 2002, 1009, 'Yoga Flow', 2, 10),
(3003, 2003, 1010, 'Cardio Circuit', 3, 15),
(3004, 2004, 1011, 'Core Strengthening', 2, 12),
(3005, 2005, 1012, 'CrossFit WOD', 4, 10),
(3006, 2006, 1013, 'Zumba Dance Party', 1, 15),
(3007, 2007, 1014, 'Functional Training Drills', 3, 12);

-- Populating Exercises table
INSERT INTO Exercises (ExerciseID, ExercisePlanId, Name, Description, DifficultyLevel) VALUES 
(4001, 3001, 'Bench Press', 'Strengthens chest and arms', 3),
(4002, 3001, 'Bicep Curls', 'Isolates and strengthens bicep muscles', 2),
(4003, 3002, 'Downward Dog', 'Stretches hamstrings and shoulders', 2),
(4004, 3002, 'Warrior Pose', 'Strengthens legs and core', 2),
(4005, 3003, 'Running in Place', 'High-intensity cardio exercise', 3),
(4006, 3003, 'Jumping Jacks', 'Full-body workout', 2),
(4007, 3004, 'Plank', 'Core stability exercise', 2),
(4008, 3004, 'Russian Twists', 'Targets oblique muscles', 3),
(4009, 3005, 'Deadlifts', 'Full-body strength exercise', 4),
(4010, 3005, 'Burpees', 'Full-body cardio exercise', 4),
(4011, 3006, 'Cha-Cha', 'Latin dance cardio', 2),
(4012, 3006, 'Salsa', 'Partner dance focusing on rhythm', 3),
(4013, 3007, 'Battle Ropes', 'Full-body conditioning', 4),
(4014, 3007, 'Box Jumps', 'Plyometric exercise for lower body power', 4);

-- Populating Session table
INSERT INTO Session (SessionID, CustomerID, PlanID) VALUES 
(5001, 1008, 2001),
(5002, 1009, 2002),
(5003, 1010, 2003),
(5004, 1011, 2004),
(5005, 1012, 2005),
(5006, 1013, 2006),
(5007, 1014, 2007);

-- Populating NutritionPlan table
INSERT INTO NutritionPlan (PlanID, Description) VALUES 
(2001, 'High-protein diet for muscle growth'),
(2002, 'Balanced diet focusing on flexibility and relaxation'),
(2003, 'Cardiovascular workouts for fat burning'),
(2004, 'Pilates exercises targeting core strength'),
(2005, 'High-intensity interval training for metabolic conditioning'),
(2006, 'Dance-based fitness for aerobic endurance'),
(2007, 'Functional exercises for overall athleticism');

-- Populating Payment table
INSERT INTO Payment (PaymentId, CustomerId, PlanAmount, BaseAmount, ReferralDiscount, FinalAmount) VALUES 
(6001, 1008, 60, 60, 0, 60),
(6002, 1009, 50, 50, 0, 50),
(6003, 1010, 70, 70, 0, 70),
(6004, 1011, 40, 40, 0, 40),
(6005, 1012, 60, 60, 0, 60),
(6006, 1013, 50, 50, 0, 50),
(6007, 1014, 70, 70, 0, 70);

SET SQL_SAFE_UPDATES = 0;

UPDATE Trainer AS T
JOIN Feedback_Trainer_Association AS FTA ON T.TrainerID = FTA.TrainerID
SET T.FeedbackID = FTA.FeedbackID;