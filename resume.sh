#!/bin/bash

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
    echo "Summary: [Your brief summary here]"
}

# Function to display education
education() {
    echo "Education:"
    echo "  - [Degree], [Institution], [Year]"
    echo "  - [Degree], [Institution], [Year]"
}

# Function to display work experience
experience() {
    echo "Work Experience:"
    echo "  - [Job Title], [Company], [Years]"
    echo "    [Description of responsibilities and achievements]"
    echo "  - [Job Title], [Company], [Years]"
    echo "    [Description of responsibilities and achievements]"
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

# Main loop to accept commands
if [ -t 0 ]; then
    while true; do
        echo "Available commands: summary, education, experience, skills, projects, contact, quit"
        read -p "Enter a command: " cmd

        case $cmd in
            help)
                help
                ;;
            summary)
                summary
                ;;
            education)
                education
                ;;
            experience)
                experience
                ;;
            skills)
                skills
                ;;
            projects)
                projects
                ;;
            contact)
                contact
                ;;
            quit)
                echo "Goodbye!"
                break
                ;;
            *)
                echo "Invalid command. Type 'help' to see the list of available commands."
                ;;
        esac
    done
else
    help
fi