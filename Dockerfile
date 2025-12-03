# ---- Base Image ----
FROM python:3.10-slim

# ---- Set Work Directory ----
WORKDIR /app

# ---- Copy Requirements First (for caching) ----
COPY requirements.txt .

# ---- Install Dependencies ----
RUN pip install --no-cache-dir -r requirements.txt

# ---- Copy Application Code ----
COPY . .

# ---- Expose Application Port ----
EXPOSE 3020

# ---- Run the Application ----
# Change "app.py" to your actual file
CMD ["python3", "app.py"]
