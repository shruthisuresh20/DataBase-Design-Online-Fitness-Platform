🏋️‍♀️ Online Fitness Platform – Database Design
📘 Project Overview
This project focuses on designing a robust relational database schema for an online fitness platform that supports personalized workout plans, BMI tracking, subscription-based access, nutrition guidance, trainer feedback, and secure payment handling. Built as part of the MSIS 2613 course, the system translates real-world business logic into a normalized, metadata-driven database structure.

🎯 Objectives
Design a relational schema to support personalized workouts, BMI history, and trainer sessions

Create support for Silver (online) and Gold (trainer-led) subscription tiers

Build a secure and normalized backend structure for future app and dashboard integration

Model customer referral, feedback, nutrition, and session scheduling workflows

Ensure relational consistency, metadata alignment, and normalization best practices

🗂️ Database Design
Built a schema with 15+ entities capturing core fitness workflows

Applied 1NF–3NF normalization to remove redundancy and anomalies

Designed an EER model with disjoint roles (Trainer vs Customer), junction tables, and unary/self-joins

Introduced metadata-driven structures with clear keys, attributes, and table-level integrity

📌 Entity Highlights
Login, Customer, Trainer: Secure login & role separation

WorkoutPlan, ExercisePlan, Session, Exercises: Workout customization logic

BMI: Historical health tracking

Payment, Membership, Referral: Subscription billing and discount system

Feedback, Feedback_Trainer_Association: Feedback system with trainer performance tracking

NutritionPlan: Assigned per plan for personalized meal suggestions

🛠️ Tools Used
Lucidchart – EER modeling

MySQL – Schema implementation & queries

SQL – Data definition and testing

Markdown – Documentation formatting

📚 Learning Outcomes
Translated real-world fitness business logic into a normalized relational schema

Practiced data modeling techniques including cardinality, role separation, and associative entities

Applied 1NF–3NF principles to ensure clean structure and optimized queries

Incorporated design features like foreign keys, safe update modes, and data security scaffolding

Explored clustering strategies based on subscription type (offline sessions vs online-only content)

📎 Files Included
schema.sql – Table creation scripts

sample_queries.sql – Example insights (e.g., top-rated trainers, referrals, BMI reports)

lucidchart_eer_diagram.png – Full schema visual (if applicable)

README.md – Project documentation

