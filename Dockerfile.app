### Dockerfile for langchain

FROM python:3.8

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install --upgrade pip

# Install Jupyter and other dependencies
RUN pip install jupyter

RUN pip install "openai>=1" "langchain>=0.0.331rc2" "unstructured[all-docs]" pillow pydantic lxml pillow matplotlib chromadb tiktoken watermark
RUN apt-get -y install poppler-utils tesseract-ocr

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV GOOGLE_APPLICATION_CREDENTIALS="/app/config/google-credentials.json"

# # Create a directory for your notebooks
# WORKDIR /notebooks 
# # sync local directory with container directory
# COPY notebooks/ /app/notebooks/
# Set the working directory in the container
WORKDIR /app/notebooks/

# Expose the Jupyter port
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]