# Using Python 3.10
FROM python:3.10-slim

# create the working folder
WORKDIR /app

# Requirements file copy and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all our code and other files
COPY . .

# Open port 8000
EXPOSE 8000

# Command to run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]