# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy app code into the container
COPY app/ /app

# Install required packages
RUN pip install -r requirements.txt

# Start the Flask app
CMD ["python", "app.py"]

