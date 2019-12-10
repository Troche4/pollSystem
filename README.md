# pollSystem
Final project for a Databases course: an improved version of a simple PHP voting web application.

Link for the simple project and source code: https://www.phptpoint.com/projects/online-voting-system/

Goals of the refactoring and improvements:
1. Create an interface to accommodate a new type of user - candidates
2. Redesign the database based on normalization techniques (removing redundancy, removing partial dependencies, etc)

Changes made by me: 
1. Initialize and implement candidate folder 
2. Improve poll.sql file to include a candidate table, different sets of attributes, and foreign key constraints
3. Change queries in vote.php and save.php to reflect changes made in step 2
4. Change forms in admin/candidates.php to reflect changes made in step 2
