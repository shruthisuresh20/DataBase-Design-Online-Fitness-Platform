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

## 🧩 Enhanced Entity-Relationship (EER) Model

The EER model designed for this project showcases a complex yet well-organized fitness platform schema. It captures real-world relationships and system logic through:
<img width="450" height="500" alt="image" src="https://github.com/user-attachments/assets/700c1f96-1301-483b-8c7c-c132b8aaf591" />

- **Disjoint Role Specialization**: `Login` is the parent entity with a `type` attribute to distinguish between `Customer` and `Trainer`. This allows for secure role-based access and system logic separation.
- **Unary Relationship**: The referral system is modeled by a self-referencing relationship between `CustomerID` and `ReferredMemberID`, tracking which customer invited whom.
- **Associative Entity**: The `Feedback_Trainer_Association` table handles the many-to-many relationship between trainers and customer feedback, preventing redundancy and preserving feedback traceability.
- **Entity Clustering**:
  - **Gold-tier entities** (e.g., `Sessions`) are clustered for offline, trainer-led features.
  - **Silver-tier entities** (e.g., `ExercisePlan`, `Exercises`) serve digital-first users.
- **Clear Relationship Cardinalities**: One-to-many and many-to-many relationships are enforced through appropriate use of foreign keys and composite primary keys, ensuring scalable data integration.
- **Metadata Design**: Every entity includes a clearly typed schema (e.g., `INT`, `VARCHAR`, `DATETIME`), and foreign keys enforce referential integrity.

This model lays the foundation for a fully functioning backend that mirrors business logic, supports advanced queries, and scales with user base growth.

---
## 🧬 3NF Normalization Breakdown

The schema was normalized across **three normal forms (1NF → 2NF → 3NF)** to remove redundancy, minimize anomalies, and optimize relational clarity.

### ➤ Converting into 1NF

- **WorkoutPlan** was decomposed into:  
  `WorkoutPlan`, `Sessions`, `ExercisePlan`, `Exercise`, and `NutritionPlan`  
- **Customer** was split into `Customer` and `BMI` to isolate non-atomic health values

### ➤ Converting into 2NF

- **Membership** data was separated from `Customer` and `WorkoutPlan`, preventing partial dependency on a composite key  
- **Customer → Payment** was isolated to enforce atomic billing records

### ➤ Converting into 3NF

- **Customer → Payment** was further refined to resolve transitive dependency via `Payment`  
- Introduced `Feedback_Trainer_Association` to decouple direct dependency between `Trainer` and `Feedback`, improving scalability and accuracy of trainer reviews

### ✅ Results of 3NF Design

- Tables follow **single-subject design** (e.g., one fact per table)  
- Join paths are logical and efficient due to foreign key referencing  
- Update, insert, and delete anomalies are avoided entirely  
- Schema is cleanly extensible — ready to integrate stored procedures, views, and APIs
<img width="450" height="500" alt="image" src="https://github.com/user-attachments/assets/545a657e-962f-4e8d-9f2d-b4d6241f18c7" />

---

## Files Included

- `schema.sql` – DDL queries for table creation  
- `sample_queries.sql` – Example insights: top trainers, referral bonuses, BMI reports  
- `lucidchart_eer_diagram.png` – Visual diagram of schema (if available)  
- `README.md` – Complete documentation of the project  

---


