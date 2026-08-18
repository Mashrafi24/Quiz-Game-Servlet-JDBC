# Quiz-Game-Servlet-JDBC
Description: A Quiz Game Management System developed using Java Servlet, JDBC, MySQL and JSP.

# Bogura District Knowledge Quiz

A Servlet, JSP, and JDBC CRUD application.

Players answer random unique questions from a question bank about **Bogura District, Bangladesh**.

The homepage title is:

**Test Your Knowledge About Bogura**

Topics:

- History & Heritage
- Crops & Agriculture
- Geography
- Famous Places
- Academic Institutions

---

## What this project does

1. Player enters a name and starts a quiz.
2. The server selects random quiz questions from MySQL database.
3. Selected questions are stored in HTTP session.
4. Player submits answers.
5. The server checks answers and calculates score.
6. Player information and quiz results are stored in MySQL database.
7. Result page shows final score and performance.
8. Admin can manage quiz questions using CRUD operations.

---

## How to read this code (start here)

This project follows a simple MVC architecture.

Read files in this order:

1. `database/quizapp.sql`
   - Database tables and quiz questions

2. `src/main/java/com/boguraquiz/model/`
   - Java model classes

3. `src/main/java/com/boguraquiz/util/DBConnection.java`
   - MySQL connection setup

4. `src/main/java/com/boguraquiz/dao/`
   - Database operations

5. `src/main/java/com/boguraquiz/servlet/`
   - Servlet controllers

6. `src/main/webapp/`
   - JSP pages

Architecture rule:

- **Servlet** → Handles requests and controls application flow
- **DAO** → Communicates with MySQL database
- **Model** → Stores data objects
- **JSP** → Displays web pages

---

## Features

- Random quiz question system
- Bogura district based questions
- Multiple choice questions (MCQ)
- Category based quiz
- Player information storage
- Score calculation
- MySQL database integration
- Question CRUD operation
- Active/inactive question management

---

## Technologies

### Backend

- Java 17+
- Jakarta Servlet
- JDBC

### Frontend

- JSP
- HTML5
- CSS3

### Database

- MySQL 8+

### Tools

- IntelliJ IDEA Ultimate
- Apache Tomcat 10.1+
- Maven
- MySQL Workbench

---

# Requirements

- JDK 17 or higher
- Maven 3.8+
- MySQL 8+
- Apache Tomcat 10.1+

For Mac:

Install Maven:

```bash
brew install maven
