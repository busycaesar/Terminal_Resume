#!/usr/bin/bash

# Variables.
domain="bash.shahtech.info"
ai_content_key="011d3b82-f9ad-4705-8122-a707858455a6"
ai_domain="http://localhost:8080"

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
    echo
    echo "These are all the common commands to help you navigate through my resume."
    echo "  dev         Prompt AI to get my information"
    echo "   usage dev Where does dev current work at?"
    echo "  summary     Brief summary about me"
    echo "  education   My educational background"
    echo "  experience  My work experience"
    echo "  skills      My skills"
    echo "  projects    Projects I've worked on"
    echo "  blogs       Blogs I've written, project explaination videos."
    echo "  contact     My contact information"
    echo "  exit        Exit the resume"
    echo
}

# Function to prompt AI a question.
dev() {
    # Get the question of the user.
    question="$1"

    # Make sure all the required data is received.
    if [ -z "$question" ];
    then
        echo
        echo "You need to provide a question!"
        echo "Usage: dev Where does dev current work at?"
        echo
        return
    fi

    # Use jq to properly escape the question, but remove the extra quotes
    question=$(printf '%s' "$question" | jq -Rs '.')

    # Strip the extra quotes added by jq
    question=$(echo "$question" | sed 's/^"//;s/"$//')

    # Use curl to make a POST request
    response=$(curl -s -X POST "$ai_domain/api/prompt/$ai_content_key" \
        -H "Content-Type: application/json" \
        -d "{\"prompt\": \"$question\"}" | jq -r '.body.response')

    echo
    echo "Answer: $response"
    echo
}

# Function to display the summary
summary() {
    echo
    echo "Summary"
    echo
    echo "An actively learning and quality-oriented developer, with a keen ability to adapt quickly to new technology, committed to developing optimized, clean, readable, and maintainable code for building a high-quality product. Further, I have experience in communicating with clients, understanding their requirements, delivering the finest as well as accessible solutions."
    echo
}

# Function to display education
education() {
    echo
    echo "Education"
    echo
    echo "  Computer Programming and Analysis, Advanced Diploma @Seneca Polytechnic"
    echo "  January 2022 to August 2024"
    echo
    echo "  Electrical Engineering, High School Diploma @The Maharaja Sayajirao University"
    echo "  July 2018 to June 2021"
    echo
}

# Function to display work experience
experience() {
    echo
    echo "Work Experience:"
    echo
    echo "  Research Assistant/Web Developer @Seneca Applied Research" 
    echo "  Part-Time, Contract"
    echo "  January 2024 to Present"
    echo
    echo "  Web Developer @Three of Cups"
    echo "  Freelancing"
    echo "  April 2024 to May 2024"
    echo
    echo "  Lab Assistant @Seneca Polytechnic"
    echo "  Part-Time, Contract"
    echo "  January 2024 to April 2024"
    echo
    echo "  Senior Developer @Seneca Hackathon"
    echo "  Volunteering"
    echo "  November 2023 to March 2024"
    echo
    echo "  Junior Web Developer @Toronto District School Board"
    echo "  Full-Time, Co-op"
    echo "  January 2023 to August 2023"
    echo
}

# Function to display skills
skills() {
    echo
    echo "Skills:"
    echo
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
    echo
}

# Function to display projects
projects() {
    echo
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
    echo
}

# Function to display contact information
contact() {
    echo
    echo "Contact Information:"
    echo
    echo "  Email: busycaesar@gmail.com"
    echo "  LinkedIn: https://www.linkedin.com/in/busycaesar/"
    echo "  GitHub: https://github.com/busycaesar"
    echo
}

# Function to display blogs information
blogs() {
    echo
    echo "Blogs:"
    echo
    echo "  Dev.to:  https://dev.to/busycaesar"
    echo "  YouTube: https://www.youtube.com/@_devshah"
    echo
}

exit_resume() {
    echo "logout"
    echo "Connection to $domain closed."
    echo "Adios, ${username:='buddy'}!"
    exit 0
}

read -p "Enter username: " username

echo
echo "Welcome $username,"
echo "Please enter commands to navigate through the resume."
echo "Use 'help' to see the list of available commands."
echo

while true;
do
    read -p "$username@$domain:~$ " input

    # Split the input into the command and the rest of the arguments
    command=$(echo "$input" | awk '{print $1}')
    args=$(echo "$input" | cut -d' ' -f2-)

    case $command in
        dev)
            dev "$args"
            ;;
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
            exit_resume
            ;;
        *)
            help
            ;;
    esac
done
