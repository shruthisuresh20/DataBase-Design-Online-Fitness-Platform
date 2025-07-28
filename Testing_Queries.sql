-- Display all feedbacks for a particular trainer with TrainerID 1004
SELECT FeedbackID, CustomerID, Feedback, Rating 
FROM Feedback 
WHERE FeedbackID IN (
    SELECT FeedbackID 
    FROM Feedback_Trainer_Association 
    WHERE TrainerID = 1004
);

-- Display the names and specializations of all trainers
SELECT Name, Specialization 
FROM Trainer;

-- Display the BMI of all customers along with their names
SELECT c.Name, b.BMI 
FROM Customer c 
INNER JOIN BMI b ON c.CustomerID = b.CustomerID;

-- Display the total plan amount for each membership type
SELECT m.MembershipType, SUM(w.PlanAmount) AS TotalAmount 
FROM Membership m 
INNER JOIN WorkoutPlan w ON m.PlanId = w.PlanId 
GROUP BY m.MembershipType;

-- Display the top 3 trainers with the highest average rating
SELECT t.Name, AVG(f.Rating) AS AverageRating 
FROM Trainer t 
INNER JOIN Feedback_Trainer_Association fta ON t.TrainerID = fta.TrainerID 
INNER JOIN Feedback f ON fta.FeedbackID = f.FeedbackID 
GROUP BY t.Name 
ORDER BY AverageRating DESC 
LIMIT 3;

-- Display the total number of sessions for each customer
SELECT c.Name, COUNT(s.SessionID) AS SessionCount 
FROM Customer c 
LEFT JOIN Session s ON c.CustomerID = s.CustomerID 
GROUP BY c.Name;

-- Display the description of nutrition plans for all workout plans
SELECT w.PlanName, n.Description 
FROM WorkoutPlan w 
INNER JOIN NutritionPlan n ON w.PlanId = n.PlanID;

-- Display the names of customers who have a referral discount
SELECT Name 
FROM Customer 
WHERE ReferralDiscount > 0;

-- Display the details of the highest-rated feedback
SELECT * 
FROM Feedback 
WHERE Rating = (SELECT MAX(Rating) FROM Feedback);

-- Display the names of customers along with their corresponding trainer's specialization
SELECT c.Name AS CustomerName, t.Specialization AS TrainerSpecialization 
FROM Customer c 
INNER JOIN Trainer t ON c.Referred_MemberID = t.TrainerID;
