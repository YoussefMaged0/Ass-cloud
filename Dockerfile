# Base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY . .

# Install NLTK inside the container
RUN pip install nltk

# Download NLTK resources (if not already downloaded)
RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader stopwords


# Run the Python script to print the filtered data when the container starts
CMD ["python", "script.py"]