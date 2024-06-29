## **AI Init** Documentation

### Introduction

The **AI Init** is a powerful bash script designed to streamline the initial setup of AI projects. With a single command, you can generate a well-structured project directory with all the necessary files and folders. This helps you quickly get started on your AI project, ensuring that you follow best practices for organizing your code and data.

### Why Structure and Modularity of Code is Important

#### Readability
- **Clear Structure**: A well-structured project allows developers to understand the organization and flow of the project quickly. This script organizes your project into directories like `artifacts`, `src`, `research`, `logs`, etc., making it easy to navigate and find files.
- **Consistent Naming**: Using consistent naming conventions for directories and files improves readability and helps team members locate resources without confusion.

#### Maintainability
- **Modular Code**: The script is divided into functions, each responsible for a specific task. This modularity makes it easier to maintain and update the script. If a part of the script needs to be modified or debugged, you can focus on the relevant function without affecting the rest of the script.
- **Ease of Updates**: When your project structure is modular and well-defined, updating or adding new features becomes straightforward. Each function in the script performs a distinct operation, making it easier to identify where changes need to be made.

#### Time-Saving
- **Automation**: The script automates the creation of directories, files, and other necessary configurations, saving time and reducing the risk of manual errors. This allows you to focus more on developing the core functionality of your AI project rather than setting up the environment.
- **Reusable Code**: By using this script, you can reuse the same setup for multiple projects, ensuring consistency across your projects and saving time on setup for each new project.

### Features


- **Create Project Directories**: Creates the main project directory and subdirectories for various project components.
- **Create Virtual Environment**: Creates a Python virtual environment for the project.
- **Create Log Directory**: Creates a directory for logs.
- **Create Research Directory and Files**: Creates a directory for research and data exploration notebooks.
- **Create Source Directory and Subdirectories**: Creates the `src` directory and subdirectories for code organization.
- **Create .gitignore File**: Creates a `.gitignore` file to exclude certain files and directories from version control.
- **Create README File**: Creates a `README.md` file for the project.
- **Create Requirements File**: Creates a `requirements.txt` file for project dependencies.
- **Create Docker Files**: Creates a `Dockerfile` and a `.dockerignore` file for Docker support.
- **Create DVC Files**: Creates DVC files for data version control.
- **Create GitHub Actions Workflow Files**: Creates GitHub Actions workflow files.
- **Create Params.yaml File**: Creates a `params.yaml` file for project parameters.
- **Initialize Git Repository**: Initializes a git repository in the project directory.
- **Print Project Directory Structure**: Prints the project directory structure.

### How to Use the Script

1. **Clone the Repository**
   ```bash
   git clone <repo-url>
   cd <repo-directory>
   ```

2. **Make the Script Executable**
   ```bash
   chmod +x script_name.sh
   ```

3. **Run the Script**
   ```bash
   ./script_name.sh project_name
   ```

4. **Follow the Prompts**
   - Enter the project name as command line argument (first).
   - The script will validate the project name and check if a directory with the same name already exists.
   - It will then create the project directory and all necessary subdirectories and files.
   - The script will also initialize a git repository and print the project directory structure.



### Project Structure

The generated project structure will look like this:

```
my_ai_project
├── .dvc
├── .github
│   └── workflows
├── artifacts
│   ├── data_collection
│   ├── data_ingestion
│   ├── data_preprocessing
│   ├── exploratory_data_analysis
│   ├── feature_engineering
│   ├── model_training
│   ├── model_evaluation
│   └── model_deployment
├── logs
├── research
│   ├── data_collection.ipynb
│   ├── data_ingestion.ipynb
│   ├── data_preprocessing.ipynb
│   ├── exploratory_data_analysis.ipynb
│   ├── feature_engineering.ipynb
│   ├── model_training.ipynb
│   ├── model_evaluation.ipynb
│   └── model_deployment.ipynb
├── src
│   ├── __init__.py
│   ├── components
│   ├── config
│   ├── entity
│   ├── pipeline
│   └── utils
├── .gitignore
├── Dockerfile
├── params.yaml
├── README.md
├── requirements.txt
└── main.py
```

By following this documentation, you can effectively use the AI Project Template Generator to set up your AI projects quickly and efficiently.