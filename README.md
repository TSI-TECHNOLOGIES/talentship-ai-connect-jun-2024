# Talentship AI Connect - June 2024

#### 1. Handling unstructured data with Document AI
#### 2. Multi-Modal RAG using Unstructured.io 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, make sure you have the following software and credentials installed:

- Docker and Docker Compose
- OpenAI API key
- DocumentAI credentials
- ANTHROPIC API key
- Postgres DB
- Google Cloud Service Account
       
### Installing

A step by step series of examples that tell you how to get a development environment running.

1. Clone the repository:
   ```bash
   git clone https://github.com/username/project.git

2. Update the configuration values in the .env file in root directory

## Configuration

Update the following environment variables in the `.env` file located in the root directory:

- `OPENAI_API_KEY`: Update your OpenAI key here
- `OPENAI_API_KEY_TURBO`: Update your OpenAI Turbo key here
- `ANTHROPIC_API_KEY`: Update your ANTHROPIC OpenAI Turbo key here
- `DOCUMENTAI_LOCATION`: Update the Document AI location here
- `DOCUMENTAI_PROJECT_ID`: Update the Document AI project Id here
- `DOCUMENTAI_PROCESSOR_ID`: Update the Document AI processor Id here
- `PGADMIN_DEFAULT_EMAIL`: Set the default email for PGAdmin
- `PGADMIN_DEFAULT_PASSWORD`: Set the default password for PGAdmin
- `POSTGRES_USER`: Set the username for the Postgres database
- `POSTGRES_PASSWORD`: Set the password for the Postgres database
- `POSTGRES_DB`: Set the name of the Postgres database
- `POSTGRES_HOST`: Set the host for the Postgres database
- `POSTGRES_PORT`: Set the port for the Postgres database

Make sure to replace the placeholder values with the appropriate information.

3. Enable Document AI Api in Google Console. Generate a service account credential json file and place it in config folder.

4. Run the following docker compose command to start app in your machine.
   
   `docker-compose up`
