# 1. An official Python base image
FROM python:3.10-slim

# 2. Set a working directory inside the container
WORKDIR /app

# 3. Copy the dependency file first (for caching)
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the project files into the container
COPY . .

# 6. Expose Flask port
EXPOSE 5000

# 7. Run the Flask application
CMD ["python", "app.py"]
