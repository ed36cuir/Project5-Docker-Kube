FROM python:3.6-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/
COPY . requirements.txt /app/


## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip3 install --upgrade pip &&\
    pip3 install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

## Step 6:
## Copy rest of source code
COPY . .
