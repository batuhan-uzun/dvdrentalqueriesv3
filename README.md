# Employee Table Operations - Quiz 8

This repository contains SQL scripts for creating and manipulating an `employee` table in the `test` database as part of Quiz 8.

---

## Objectives:
1. Create an `employee` table with the following structure:
   - **id**: `INTEGER`, primary key, auto-increment.
   - **name**: `VARCHAR(50)`.
   - **birthday**: `DATE`.
   - **email**: `VARCHAR(100)`.

2. Populate the table with **50 records** using the [Mockaroo](https://mockaroo.com/) service.

3. Perform **5 UPDATE operations** to modify data in the table based on other columns.

4. Perform **5 DELETE operations** to remove rows based on specific conditions.

---

## SQL Script Breakdown:

### Table Creation:
The `employee` table is created with the required fields:
```sql
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
```

### Inserting Data:
Mockaroo data is used to insert 50 records into the `employee` table. Example:
```sql
INSERT INTO employee (name, birthday, email)
VALUES 
('John Doe', '1990-01-15', 'john.doe@example.com'),
('Jane Smith', '1985-05-20', 'jane.smith@example.com');
```

### Update Operations:
Examples of `UPDATE` queries include:
```sql
UPDATE employee
SET name = 'Updated Name'
WHERE id = 1;
```

### Delete Operations:
Examples of `DELETE` queries include:
```sql
DELETE FROM employee
WHERE id = 6;
```

### How to Use:
Open a PostgreSQL-compatible SQL client (e.g., pgAdmin or psql terminal).
Create the `employee` table using the provided script.
Insert data into the table using Mockaroo or the example provided.
Run the `UPDATE` and `DELETE` queries to manipulate the data.

### Files:
`quiz8queries.sql`: Contains all the SQL queries for Quiz 8.

Created by Batuhan Uzun
