FROM python:3.8

RUN apt-get update && apt-get install -y nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# Install Python dependencies
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Set working directory
WORKDIR /app

COPY . /app

# Start Nginx and the Python application
CMD service nginx start && python app.py