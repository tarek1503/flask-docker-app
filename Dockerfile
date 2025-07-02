# Base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy rest of the code
COPY . .

# Expose the Flask port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
