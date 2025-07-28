🏋️‍♀️ Online Fitness Platform – Database Design
This project presents a complete relational database schema designed for a scalable online fitness platform. It was developed as part of the MSIS 2613: Database Management Systems course, with a focus on turning real-world business requirements into normalized, metadata-driven data models.

Inspired by leading digital fitness platforms (e.g., Chloe Ting), the system supports a personalized fitness experience, combining workout plans, nutrition guidance, BMI tracking, trainer feedback, secure payments, and role-based access.

📌 Project Summary
This fitness platform enables:

Custom workouts by user goals and subscription type

BMI tracking and history logging

Trainer-led sessions (Gold members) and online classes (Silver members)

Nutrition plan access linked to workout types

Feedback and ratings for trainers with association mapping

Referral discounts and payment tracking with secure workflows

🧱 Database Design Highlights
🔧 Schema Development
The database includes 15+ normalized entities:

Login, Customer, Trainer: Role-based identity structure

WorkoutPlan, ExercisePlan, Session, Exercises: Fitness tracking core

Payment, Membership, Referral: Subscription and financial logic

Feedback, Feedback_Trainer_Association: Feedback loop and engagement

BMI, NutritionPlan: Health tracking support

All entities are tied together through clearly defined keys, constraints, and scalable structure.

🧩 Entity-Relationship Modeling
Built an Enhanced Entity Relationship (EER) Model using Lucidchart

Included many-to-many, one-to-many, and disjoint role relationships

Unary relationship modeled referrals (Customer ↔ Customer)

Entity clustering: Offline sessions are clustered under Gold plans; online workout features apply to both tiers

Captured role logic using a type attribute in the Login table (trainer vs. customer)

📐 Normalization
Normalization was performed up to Third Normal Form (3NF):

1NF: Decomposed non-atomic fields (e.g., BMI split into height, weight, and calculation)

2NF: Isolated partially dependent fields into Payment, Membership, etc.

3NF: Resolved transitive dependencies using bridge tables and isolated feedback mechanisms

This process ensures minimal redundancy, simplified joins, and maintainable schema design.

🧠 Metadata-Driven Table Design
Every table adheres to strong metadata principles:

Explicit data types (INT, VARCHAR, BOOLEAN, DATETIME)

Primary keys, composite keys, and foreign key constraints used throughout

Clear naming conventions and relational consistency across all tables

Support for auto-increment IDs, timestamps, and referential enforcement

Designed with query patterns in mind: rating filters, trainer referrals, session scheduling

🔐 Security & Access Considerations
Even though this is a backend-only database project, key security principles were incorporated:

Placeholder for hashed password storage (e.g., password field in Login)

Role control via Login.type, separating trainer and customer logic

Foreign key constraints prevent orphaned records and maintain integrity

Design supports Role-Based Access Control (RBAC) implementation and audit logging

💡 Key Use Cases Enabled
View top 3 rated trainers based on client feedback

Track BMI history and visualize user fitness progress

Schedule trainer sessions by membership level

Analyze referral patterns and apply discounts dynamically

Process membership payments with discount logic and final amount calculation

Assign and view nutrition plans tailored to each workout type

🧪 Tools & Technologies
Category	Tools Used
Database Design	Lucidchart
Query Language	SQL
Database Engine	MySQL
Modeling Method	EER, Normalization

🚀 Learnings & Takeaways
Applied theoretical normalization principles to a real-world multi-role system

Understood how to translate ambiguous business needs into normalized, scalable relational tables

Tackled challenges like role disjunction, feedback mapping, and referral handling

Experienced complete backend lifecycle: from entity design → schema implementation → query testing

📎 Files Included
schema.sql – DDL queries for creating all tables

sample_queries.sql – Example queries (e.g., top trainers, trainer feedback, referral-based discounts)

lucidchart_eer_diagram.png – EER diagram of full schema (if you add this image)

README.md – This detailed description

🧠 Future Improvements
Build frontend integration (React/Angular UI)

Implement stored procedures and triggers for referral logic

Integrate with Firebase/Auth0 for real-time login functionality

Expand feedback features to include sentiment scoring
