# sql-challenge


For this task, I researched people whom a company employed during the 1980s and 1990s. All that remained of the employee database from that period are six CSV files. I designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then answered questions about the data. Through this, I performed data modeling, data engineering, and data analysis, respectively.


In order to conduct data modeling, I inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables. To create the sketch, I used QuickDBD.
![alt text](https://github.com/msryannhawkins/sql-challenge/blob/main/EmployeeSQL/DB/ERD_SQL_Challenge.png
 "ERD")

Then, for my data engineering portion, I used the provided information to create a table schema for each of the six CSV files. I made sure to do the following:
    *Remembered to specify the data types, primary keys, foreign keys, and other constraints.
    
    *For the primary keys, verified that the column wass unique. Otherwise, I created a composite key.
    
    *I was sure to create the tables in the correct order to handle the foreign keys.
    
    *Lastly, I imported each CSV file into its corresponding SQL table.


Lastly, my data analysis focused on creating tables which responded to the following prompts:
    *List the employee number, last name, first name, sex, and salary of each employee.

    *List the first name, last name, and hire date for the employees who were hired in 1986.

    *List the manager of each department along with their department number, department name, employee number, last name, and first name.

    *List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

    *List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

    *List each employee in the Sales department, including their employee number, last name, and first name.

    *List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

    *List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


