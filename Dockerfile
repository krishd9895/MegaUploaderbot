FROM debian:latest

# Update package lists and upgrade existing packages
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install -y \
    git \
    python3 \
    python3-pip \
    curl  # Adding curl for debugging network connectivity

# Clone the repository
RUN git clone https://github.com/krishd9895/MegaUploaderbot /MegaUploaderbot
WORKDIR /MegaUploaderbot

# Install Python dependencies
COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install -r requirements.txt

# Set the command to run your application
CMD ["python3", "bot.py"]
