# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Give execute permissions for wait-for-it.sh
RUN chmod +x wait-for-it.sh

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run gremlin_script.py when the container launches
CMD ["python", "./gremlin.py"]