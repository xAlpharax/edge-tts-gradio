# Use an official Python base image
FROM python:3.10.14-slim

# Set the working directory in the container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY app.py ./

# Expose the port the app runs on
EXPOSE 7860

# Command to run the application using uvicorn
CMD ["python", "app.py"]
