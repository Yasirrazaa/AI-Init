#!/bin/bash

PROJECT_NAME=""




# Function to validate project name
validate_project_name() {
    if [[ -z "$PROJECT_NAME" ]]; then
        echo -e "${r}Error: Project name cannot be empty.${d}"
        exit 1
    fi

    if [[ ! "$PROJECT_NAME" =~ ^[a-zA-Z0-9_/]+$ ]]; then
        echo -e "${r}Error: Project name can only contain letters, numbers, underscore (_), and forward slash (/).${d}"
        get_project_name
    fi
}

# Function to check if project directory exists
check_project_directory() {
    if [[ -d "$PROJECT_NAME" ]]; then
        echo -e "${r}Error: Project directory '$PROJECT_NAME' already exists.${d}"
        exit 1
    fi
}

# Function to create project directories
create_project_directories() {
    DIRECTORIES=(
        "artifacts/data_collection"
        "artifacts/data_ingestion"
        "artifacts/data_preprocessing"
        "artifacts/exploratory_data_analysis"
        "artifacts/feature_engineering"
        "artifacts/model_training"
        "artifacts/model_evaluation"
        "artifacts/model_deployment"
        "config"
        "config/config.yaml"
    )

    mkdir "$PROJECT_NAME"
    cd "$PROJECT_NAME"

    for DIR in "${DIRECTORIES[@]}"; do
        mkdir -p "$DIR"
    done
}

create_venv() {
    python3 -m venv .env
}

# Function to create log directory
create_log_directory() {
    LOG_DIRECTORIES=(
        "logs"
        "logs/logs.log"
    )

    for LOG_DIR in "${LOG_DIRECTORIES[@]}"; do
        mkdir -p "$LOG_DIR"
    done
}

# Function to create research directory and files
create_research_directory() {
    DIRECTORIES=(
        "research"
        "research/data_collection.ipynb"
        "research/data_ingestion.ipynb"
        "research/data_preprocessing.ipynb"
        "research/exploratory_data_analysis.ipynb"
        "research/feature_engineering.ipynb"
        "research/model_training.ipynb"
        "research/model_evaluation.ipynb"
        "research/model_deployment.ipynb"
    )

    for DIR in "${DIRECTORIES[@]}"; do
        mkdir -p "$DIR"
    done
}

# Function to create src directory and subdirectories
create_src_directory() {
    SRC_DIRECTORIES=(
        "__init__.py"
        "components"
        "config"
        "entity"
        "utils"
        "pipeline"
    )

    mkdir src
    mkdir "src/$PROJECT_NAME"

    for SRC_DIR in "${SRC_DIRECTORIES[@]}"; do
        mkdir -p "src/$PROJECT_NAME/$SRC_DIR"
    done
}

# Function to create .gitignore file
create_gitignore() {
    cat > .gitignore <<EOF
# Ignore Python virtual environment
.env/
artifacts/

# Ignore any other files or directories specific to your project
EOF
}

# Function to create README file
create_readme() {
    touch README.md
    cat > README.md <<EOF
# $PROJECT_NAME
EOF
}

# Function to create requirements.txt file
create_requirements_file() {
    touch requirements.txt
    touch main.py
    touch app.py
}

# Function to create Dockerfile and .dockerignore file
create_docker_files() {
    touch Dockerfile

    cat > .dockerignore <<EOF
# Ignore Docker related files
.DS_Store
.dockerignore
.dockerignore.template
.dockerignore-sample
.dockerignore-sample.template
.dockerenv
.git
.gitignore
EOF
}

# Function to create DVC files
create_dvc_files() {
    mkdir .dvc
    touch dvc.yaml
    touch .dvcignore
}

# Function to create GitHub Actions workflow files
create_github_files() {
    mkdir -p .github/workflows
    touch .github/workflows/main.yaml
}

# Function to create params.yaml file
create_params_file() {
    touch params.yaml
}

# Function to initialize git repository
initialize_git_repository() {
    git init
}

# Function to print the project directory structure
print_directory_structure() {
    echo -e "${g}Project directory structure:${d}"
    tree -a
}




# Main function
main(){
    PROJECT_NAME=$1
    # Get project name from user
    get_project_name "$1"

    # Validate project name
    echo -e "${y}Validating project name...${d}"
    validate_project_name
    echo -e "loading please wait..."
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Check if project directory exists
    echo -e "${y}Checking if project directory exists...${d}"
    check_project_directory
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create project directories
    echo -e "${y}Creating project directories...${d}"
    create_project_directories
    echo -e "${g}Project directories created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    #Create virtual environment
    echo -e "${y}Creating virtual environment...${d}"
    create_venv
    echo -e "${g}Virtual environment created.${d}"

    # Create log directory
    echo -e "${y}Creating log directory...${d}"
    create_log_directory
    echo -e "${g}Log directory created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create research directory and files
    echo -e "${y}Creating research directory and files...${d}"
    create_research_directory
    echo -e "${g}Research directory and files created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create src directory and subdirectories
    echo -e "${y}Creating src directory and subdirectories...${d}"
    create_src_directory
    echo -e "${g}Src directory and subdirectories created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create .gitignore file
    echo -e "${y}Creating .gitignore file...${d}"
    create_gitignore
    echo -e "${g}.gitignore file created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create README file
    echo -e "${y}Creating README file...${d}"
    create_readme
    echo -e "${g}README file created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create requirements.txt file
    echo -e "${y}Creating requirements.txt file...${d}"
    create_requirements_file
    echo -e "${g}requirements.txt file created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create Dockerfile and .dockerignore file
    echo -e "${y}Creating Dockerfile and .dockerignore file...${d}"
    create_docker_files
    echo -e "${g}Dockerfile and .dockerignore file created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create DVC files
    echo -e "${y}Creating DVC files...${d}"
    create_dvc_files
    echo -e "${g}DVC files created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create GitHub Actions workflow files
    echo -e "${y}Creating GitHub Actions workflow files...${d}"
    create_github_files
    echo -e "${g}GitHub Actions workflow files created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Create params.yaml file
    echo -e "${y}Creating params.yaml file...${d}"
    create_params_file
    echo -e "${g}params.yaml file created.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"

    # Initialize git repository
    echo -e "${y}Initializing git repository...${d}"
    initialize_git_repository
    echo -e "${g}Git repository initialized.${d}"
    echo -e "_____________________________________________________"
    echo -e "_____________________________________________________"




    # Display completion message
    echo -e "${g}Project structure created successfully. Happy coding!${d}"

    # Print the project directory structure
    echo -e "${y}Printing project directory structure...${d}"
    print_directory_structure

    
}

main "$1"
