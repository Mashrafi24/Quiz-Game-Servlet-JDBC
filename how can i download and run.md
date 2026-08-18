Apache Tomcat Setup (macOS)
Download Tomcat

Download Apache Tomcat from:

https://tomcat.apache.org/

Recommended version:

Apache Tomcat 10.1.x

Download:

Binary Distribution → Core → tar.gz
Extract Tomcat

Open Terminal:

cd ~/Downloads

Extract:

tar -xvf apache-tomcat-10.1.xx.tar.gz

Give permission:

cd apache-tomcat-10.1.xx/bin


chmod +x *.sh

Test server:

./startup.sh

Open browser:

http://localhost:8080

If Tomcat page appears, setup is successful.

Run Project in IntelliJ IDEA
Step 1: Open Project

Open IntelliJ IDEA:

File → Open → Select Project Folder

Wait for Maven dependencies to download.

Step 2: Configure Tomcat

Go to:

Run → Edit Configurations

Select:

+ → Tomcat Server → Local

Add Tomcat location:

Example:

/Library/Tomcat/apache-tomcat-10.1.xx
Step 3: Add Deployment

Go to:

Deployment → +

Select:

Artifact → BoguraQuizGame:war exploded

Application Context:

/BoguraQuizGame
Step 4: Run Application

Click:

Run ▶

Open browser:

http://localhost:8080/BoguraQuizGame/

The application will start successfully.

Sample Categories

The quiz contains questions related to:

History
Geography
Famous Places
Crops
Academic Institutions
Future Improvements
User authentication system
Admin dashboard
Timer-based quiz
Ranking system
More district-based questions
Author

Mashrafi

GitHub:

https://github.com/Mashrafi24
License

This project is developed for academic purposes.
