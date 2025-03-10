# Use an official Python runtime as a parent image
FROM python:3.12.8

# Set the working directory in the container
WORKDIR /server

# Copy the current directory contents into the container at /app
COPY . /server

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


ENV LISTEN_PORT=5000
# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_ENV production

# Run app.py when the container launches
CMD ["python", "index1.py"]