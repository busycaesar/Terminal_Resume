#!/usr/bin/bash

# Call the function to start the procedure to close the server
trap exit_resume SIGINT

# Display welcome message
echo
echo " ______   _______           _  _______    _______  _______  _______           _______  _______ "
echo "(  __  \ (  ____ \|\     /|( )(  ____ \  (  ____ )(  ____ \(  ____ \|\     /|(       )(  ____ \ "
echo "| (  \  )| (    \/| )   ( ||/ | (    \/  | (    )|| (    \/| (    \/| )   ( || () () || (    \/ "
echo "| |   ) || (__    | |   | |   | (_____   | (____)|| (__    | (_____ | |   | || || || || (__     "
echo "| |   | ||  __)   ( (   ) )   (_____  )  |     __)|  __)   (_____  )| |   | || |(_)| ||  __)    "
echo "| |   ) || (       \ \_/ /          ) |  | (\ (   | (            ) || |   | || |   | || (       "
echo "| (__/  )| (____/\  \   /     /\____) |  | ) \ \__| (____/\/\____) || (___) || )   ( || (____/\ "
echo "(______/ (_______/   \_/      \_______)  |/   \__/(_______/\_______)(_______)|/     \|(_______/ "
echo
echo

# Function to display the help message
help() {
    echo "These are all the common commands to help you navigate through my resume."
    echo "  summary     Brief summary about me"
    echo "  education   My educational background"
    echo "  experience  My work experience"
    echo "  skills      My skills"
    echo "  projects    Projects I've worked on"
    echo "  blogs       Blogs I've written, project explaination videos."
    echo "  contact     My contact information"
    echo "  exit        Exit the resume"
}

# Function to display the summary
summary() {
    echo "An actively learning and quality-oriented developer, with a keen ability to adapt quickly to new technology, committed to developing optimized, clean, readable, and maintainable code for building a high-quality product. Further, I have experience in communicating with clients, understanding their requirements, delivering the finest as well as accessible solutions. My goal is to learn Full Stack Development along with knowledge in the areas of UI/UX Design and Cloud Computing and DevOps."
}

# Function to display education
education() {
    echo "Education:"
    echo "  Computer Programming and Analysis, Advanced Diploma @Seneca Polytechnic"
    echo "  January 2022 to August 2024"
    echo
    echo "  Electrical Engineering, High School Diploma @The Maharaja Sayajirao University"
    echo "  July 2018 to June 2021"
}

# Function to display work experience
experience() {
    echo "Work Experience:"
    echo "  Research Assistant/Web Developer @Seneca Applied Research" 
    echo "  January 2024 to present"
    echo
    echo "  Web Developer @Three of Cups"
    echo "  April 2024 to May 2024"
    echo
    echo "  Lab Assistant @Seneca Polytechnic"
    echo "  January 2024 to April 2024"
    echo
    echo "  Senior Developer @Seneca Hackathon"
    echo "  November 2023 to March 2024"
    echo
    echo "  Junior Web Developer @Toronto District School Board"
    echo "  January 2023 to August 2023"
}

# Function to display skills
skills() {
    echo "Skills:"
    echo "  Languages               Javascript, Typescript, C#, Python, Bash Shell Script, Java, C++, C, HTML, YAML, XAML, Markdown, CSS"
    echo "  Technologies            React.js, Next.js, Vite, Node.js, Express.js, Nest.js, Tailwindcss, Bootstrap, MaterialUI"
    echo "  Concepts                OOP, Web Accessibility, JSON, AJAX, REST APIs, JWT, MVC, Regex"
    echo "  CI/CD                   Jest, Docker, Docker Compose, GitHub Actions, DockerHub"
    echo "  Database                MongoDB, PostgreSQL, SQLite, Redis, Firebase"
    echo "  Version Control Systems Git, GitHub"
    echo "  Operating Systems       Unix/Linux, Ubuntu, Windows"
    echo "  Code Editors/IDEs       vim, VS Code, Visual Studio, IntelliJ, Eclipse"
    echo "  Applications            Postman, Vercel, Figma, Adobe Premiere Pro, Discord, Notion, Obsidian"
    echo "  Currently Learning      AWS, Azure"
}

# Function to display projects
projects() {
    echo "Projects:"
    echo
    echo "  IoT Data Management API: A microservices based architecture for managing IoT data using cloud platform and products of AWS, featuring secure authentication with AWS Cognito and automated CI/CD pipelines for robust testing and deployment via GitHub, Docker, and Amazon ECS."
    echo "  Tech Stack: Node.js, Express.js, jest, Docker, DockerHub, AWS Cognito, EC2 Instance, ECR, S3 bucket, DynamoDB"
    echo "  Link: https://github.com/busycaesar/IoT_Data_Management_API"
    echo
    echo "  Metropolitan Museum: A full-stack web application for the Metropolitan Museum featuring secure JWT authentication, advanced artifact search, favorites management, and persistent user search history."
    echo "  Tech Stack: Next.js, Jotai, Node.js, Express.js, JWT, MongoDB"
    echo "  Link: https://github.com/busycaesar/Metropolitan_Museum"
    echo
    echo "  Hotel Reservation System: A desktop app for hotel reservation management system, enabling customers to book rooms and providing admins with tools to manage bookings, generate receipts, and oversee customer reservations."
    echo "  Tech Stack: Java, JavaFx, SQLite"
    echo "  Link: https://github.com/busycaesar/Hotel_Reservation_System"
}

# Function to display contact information
contact() {
    echo "Contact Information:"
    echo "  Email: busycaesar@gmail.com"
    echo "  LinkedIn: https://www.linkedin.com/in/busycaesar/"
    echo "  GitHub: https://github.com/busycaesar"
}

# Function to display blogs information
blogs() {
    echo "Blogs:"
    echo "  Dev.to:  https://dev.to/busycaesar"
    echo "  YouTube: https://www.youtube.com/@_devshah"
}

exit_resume() {
    echo "logout"
    echo "Connection to cli.shahtech.info closed."
    echo "Adios, ${username:='dev'}"
    exit 0
}

read -p "Enter username: " username

echo
echo "Welcome $username,"
echo "Please enter commands to navigate through the resume."
echo "Use 'help' to see the list of available commands."
echo

new_session=1

while true;
do
    read -p "$username@cli.shahtech.info:~$ " command

    case $command in
        summary)
            summary
            ;;
        skills)
            skills
            ;;
        experience)
            experience
            ;;
        projects)
            projects
            ;;
        education)
            education
            ;;
        contact)
            contact
            ;;
        blogs)
            blogs
            ;;
        clear)
            clear
            ;;
        exit)
            exit
            ;;
        *)
            help
            ;;
    esac
done
