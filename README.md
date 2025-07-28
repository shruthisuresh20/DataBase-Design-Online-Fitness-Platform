# Online Fitness Platform – Database Design

---

## Project Overview

This project focuses on designing a robust relational database for an online fitness platform that supports personalized workout plans, BMI tracking, subscription-based access, nutrition guidance, trainer feedback, and secure payment handling.

Built as part of the MSIS 2613 course, the system translates real-world business logic into a fully normalized, metadata-driven database structure.

---

## Objectives

- Design a relational schema to support personalized workouts, BMI history, and trainer sessions  
- Create support for Silver (online) and Gold (trainer-led) subscription tiers  
- Build a secure and normalized backend structure for future app and dashboard integration  
- Model customer referral, feedback, nutrition, and session scheduling workflows  
- Ensure relational consistency, metadata alignment, and normalization best practices  

---

## Database Design

The backend schema includes over 15 normalized entities capturing the platform’s core functionalities. The design is built to scale and integrates features such as referrals, plan-based clustering, and secure access roles.

---

## Entity Highlights

- `Login`, `Customer`, `Trainer`: Role-based identity management  
- `WorkoutPlan`, `ExercisePlan`, `Session`, `Exercises`: Workout logic  
- `BMI`: Health tracking and progress logging  
- `Payment`, `Membership`, `Referral`: Subscription management  
- `Feedback`, `Feedback_Trainer_Association`: Customer feedback and trainer ratings  
- `NutritionPlan`: Tailored dietary structure  

---

## Tools Used

- **Lucidchart** – Schema modeling  
- **MySQL** – Database design and implementation  
- **SQL** – Query development  
- **Markdown** – Documentation formatting  

---

## Learning Outcomes

- Applied 1NF–3NF normalization to resolve redundancy and anomalies  
- Translated business requirements into scalable relational models  
- Tackled challenges in role separation, feedback modeling, and referral mapping  
- Created metadata-driven table structures to optimize schema flexibility and integrity  
- Built a secure backend structure supporting future integration with dashboards and apps  

---

## Files Included

- `schema.sql` – DDL queries for table creation  
- `sample_queries.sql` – Example insights: top trainers, referral bonuses, BMI reports  
- `lucidchart_eer_diagram.png` – Visual diagram of schema (if available)  
- `README.md` – Complete documentation of the project  

---


