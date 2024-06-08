#!/usr/bin/bash

# Display welcome message
echo
echo " /$$$$$$$                              /$$$$$$  /$$                 /$$      ";
echo "| $$__  $$                            /$$__  $$| $$                | $$      ";
echo "| $$  \ $$  /$$$$$$  /$$    /$$      | $$  \__/| $$$$$$$   /$$$$$$ | $$$$$$$ ";
echo "| $$  | $$ /$$__  $$|  $$  /$$/      |  $$$$$$ | $$__  $$ |____  $$| $$__  $$";
echo "| $$  | $$| $$$$$$$$ \  $$/$$/        \____  $$| $$  \ $$  /$$$$$$$| $$  \ $$";
echo "| $$  | $$| $$_____/  \  $$$/         /$$  \ $$| $$  | $$ /$$__  $$| $$  | $$";
echo "| $$$$$$$/|  $$$$$$$   \  $/         |  $$$$$$/| $$  | $$|  $$$$$$$| $$  | $$";
echo "|_______/  \_______/    \_/           \______/ |__/  |__/ \_______/|__/  |__/";
echo "                                                                             ";
echo "                                                                             ";
echo "                                                                             ";
echo
echo "Welcome to my resume"


# Function to display the help message
help() {
    echo "Available commands:"
    echo "  summary     - Brief summary about me"
    echo "  education   - My educational background"
    echo "  experience  - My work experience"
    echo "  skills      - My skills"
    echo "  projects    - Projects I've worked on"
    echo "  contact     - My contact information"
    echo "  quit        - Exit the resume"
}

# Function to display the summary
summary() {
    echo
    echo "An actively learning and quality-oriented developer, with a keen ability to adapt quickly to new technology, committed to developing optimized, clean, readable, and maintainable code for building a high-quality product. Further, I have experience in communicating with clients, understanding their requirements, delivering the finest as well as accessible solutions. My goal is to learn Full Stack Development along with knowledge in the areas of UI/UX Design and Cloud Computing and DevOps."
    echo
}

# Function to display education
education() {
    echo
    echo "Education:"
    echo "- Advanced Diploma, Computer Programming and Analysis, Seneca Polytechnic"
    echo "- High School Diploma, Electrical Engineering, The Maharaja Sayajirao University of Baroda"
    echo
}

# Function to display work experience
experience() {
    echo
    echo "Work Experience:"
    echo "  - [Job Title], [Company], [Years]"
    echo "    [Description of responsibilities and achievements]"
    echo "  - [Job Title], [Company], [Years]"
    echo "    [Description of responsibilities and achievements]"
    echo
}

# Function to display skills
skills() {
    echo "Skills:"
    echo "  - [Skill 1]"
    echo "  - [Skill 2]"
    echo "  - [Skill 3]"
}

# Function to display projects
projects() {
    echo "Projects:"
    echo "  - [Project 1]"
    echo "    [Description]"
    echo "  - [Project 2]"
    echo "    [Description]"
}

# Function to display contact information
contact() {
    echo "Contact Information:"
    echo "  - Email: [your email]"
    echo "  - LinkedIn: [your LinkedIn profile]"
    echo "  - GitHub: [your GitHub profile]"
}

read -p "Enter username: " username

echo
echo "Welcome $username,"
echo

new_session=1

while [ $new_session -eq 1 ];
do
    read -p "$username@shahtech.info:~$ " command

    case $command in
        summary)
            summary
            ;;
        help)
            help
            ;;
        exit)
            echo "Adios, $username!"
            echo
            new_session=0
            break;
    esac
done

# # Main loop to accept commands
# if [ $# -eq 0 ]; then

#     while true; do
#         echo "Available commands: summary, education, experience, skills, projects, contact, quit"
#         read -p "Enter a command: " cmd

#         case $cmd in
#             help)
#                 help
#                 ;;
#             summary)
#                 summary
#                 ;;
#             education)
#                 education
#                 ;;
#             experience)
#                 experience
#                 ;;
#             skills)
#                 skills
#                 ;;
#             projects)
#                 projects
#                 ;;
#             contact)
#                 contact
#                 ;;
#             quit)
#                 echo "Goodbye!"
#                 break
#                 ;;
#         esac
#     done
# else
#     help
# fi
