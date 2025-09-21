#!/usr/bin/bash

# Variables.
domain="bash.shahtech.info"

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
    echo "  summary      Brief summary about me"
    echo "  education    My educational background"
    echo "  experience   My work experience"
    echo "  skills       My skills"
    echo "  projects     Projects I've worked on"
    echo "  content      Content I've created, blogs and videos."
    echo "  contact      My contact information"
    echo "  certificates My certificates"
    echo "  notes        My notes"
    echo "  exit         Exit the resume"
    echo
}

# # Function to prompt AI a question.
# dev() {
#     # Get the question of the user.
#     question="$1"

#     # Make sure all the required data is received.
#     if [ -z "$question" ];
#     then
#         echo
#         echo "You need to provide a question!"
#         echo "Usage: dev Where does dev current work at?"
#         echo
#         return
#     fi

#     # Use jq to properly escape the question, but remove the extra quotes
#     question=$(printf '%s' "$question" | jq -Rs '.')

#     # Strip the extra quotes added by jq
#     question=$(echo "$question" | sed 's/^"//;s/"$//')

#     # Use curl to make a POST request
#     response=$(curl -s -X POST "$ai_domain/api/prompt/$ai_content_key" \
#         -H "Content-Type: application/json" \
#         -d "{\"prompt\": \"$question\"}" | jq -r '.body.response')

#     echo
#     echo "Answer: $response"
#     echo
# }

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
    echo "  Graduation: August 2024"
    echo
    echo "  Electrical Engineering, Diploma @The Maharaja Sayajirao University of Baroda"
    echo "  Graduation: June 2021"
    echo
}

# Function to display work experience
experience() {
    echo
    echo "Work Experience:"
    echo
    echo "  Agile Software Engineer @TribalScale" 
    echo "  Full-Time, Permanent"
    echo "  June 2025 to Present"
    echo
    echo "  Full-stack Developer @Three Of Cups" 
    echo "  Freelance"
    echo "  December 2024 to June 2025"
    echo
    echo "  Software Developer @Seneca Applied Research" 
    echo "  Full-Time, Contract"
    echo "  January 2024 to October 2024"
    echo
    echo "  Web Developer Intern @Three of Cups"
    echo "  Internship"
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
    echo "  Languages               Python, JavaScript, TypeScript, C#, Bash, Java, C++, C, HTML, CSS"
    echo "  Technologies            Flask, Node.js, Express.js, React.js, Next.js, Angular, Git, GitHub, Docker, Jest, GitHub Actions"
    echo "  Concepts                OOP, XML, AJAX, JSON, RESTful APIs, JWT, CI/CD, MVC, Web Accessibility"
    echo "  CI/CD                   Unit testing, Docker, Docker Compose, GitHub Actions, DockerHub"
    echo "  Database                MongoDB, PostgreSQL, SQLite, Redis, Firebase"
    echo "  Version Control Systems Git, GitHub"
    echo "  Operating Systems       Unix/Linux, Ubuntu, Windows"
    echo "  Code Editors/IDEs       vim, VS Code, Visual Studio, IntelliJ, Eclipse"
    echo "  Applications            Postman, Vercel, Figma, Adobe Premiere Pro, Discord, Notion, Obsidian"
    echo "  Currently Learning      LangChain, Vector Databases, LLMs, GenAI"
    echo
}

# Function to display projects
projects() {
    echo
    echo "Projects:"
    echo
    echo "  Content Driven LLM APIs: A RAG App built with Node.js, Express.js, and Docker, providing APIs for content submission and LLM-based response generation, saving developers 90% of the time and eliminating knowledge-based AI service costs."
    echo "  Link: https://github.com/busycaesar/Content_Driven_LLM_APIs"
    echo
    echo "  Introductory AWS Cloud Project: A cloud-based microservice using AWS, featuring secure authentication with AWS Cognito and CI/CD pipelines for robust testing and deployment via GitHub Actions, Docker, and Amazon ECS."
    echo "  Link: https://github.com/busycaesar/Introductory_AWS_Cloud_Project"
    echo
    echo "  Azure Load Balancer Setup: A project showcasing load balancing for websites using Microsoft Azure services, including VMs, Virtual Networks, Load Balancer, and Private DNS."
    echo "  Link: https://www.youtube.com/watch?v=t93d8ieZn0Q"
    echo
    echo "  Auth APIs: A web service built using Node.js and PostgreSQL, that streamlines authentication by providing secure user management and JWT handling endpoints, reducing development time by 10%."
    echo "  Link: https://github.com/busycaesar/Auth_APIs"
    echo
}

# Function to display contact information
contact() {
    echo
    echo "Contact Information:"
    echo
    echo "  Email:    dev-jshah@outlook.com"
    echo "  Website:  https://shahtech.info"
    echo "  GitHub:   https://github.com/busycaesar"
    echo "  LinkedIn: https://www.linkedin.com/in/busycaesar"
    echo "  Twitter:  https://x.com/busycaesar"
    echo
}

# Function to display blogs information
content() {
    echo
    echo "Content:"
    echo
    echo "  Dev.to:    https://dev.to/busycaesar"
    echo "  YouTube:   https://www.youtube.com/@busycaesar"
    echo "  Instagram: https://instagram.com/busycaesar"
    echo
}

# Function to display certificates information
certificates() {
    echo
    echo "Certificates:"
    echo
    echo "  Generative AI Leader:                       https://www.credly.com/earner/earned/badge/11e20051-d8b9-4520-8906-9d90dcd0db40"
    echo "  Microsoft Certified, Azure AI Fundamentals: https://learn.microsoft.com/en-us/users/busycaesar/credentials/e484210d8c19cdc9"
    echo
}

# Function to display notes information
notes() {             
    echo
    echo "Notes:"
    echo
    echo "  SAA-C03:        https://saa-c03.shahtech.info"
    echo "  Notes for AWS Certified Solutions Architect - Associate"
    echo
    echo "  AI 900:         https://ai900.shahtech.info"
    echo "  Notes for Microsoft Certified: Azure AI Fundamentals"
    echo
    echo "  AI Model Terms: https://aimodelterms.shahtech.info"
    echo "  A curated list of AI-related terms with explanations based on research papers and books."
    echo 
    echo "  Harvard CS50AI: https://cs50ai.shahtech.info"
    echo "  Notes and insights from Harvard CS50's Introduction to Artificial Intelligence with Python."
    echo
    echo "  AZ 900:         https://az900.shahtech.info"
    echo "  Notes for Microsoft Certified: Azure Fundamentals"
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
        certificates)
            certificates
            ;;
        contact)
            contact
            ;;
        content)
            content
            ;;
        notes)
            notes
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
