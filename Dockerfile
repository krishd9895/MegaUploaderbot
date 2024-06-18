FROM debian:latest

# Update package lists and upgrade existing packages
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install -y \
    git \
    python3-pip \
    curl  # Adding curl for debugging network connectivity

# Clone the repository
RUN git clone https://github.com/krishd9895/MegaUploaderbot /MegaUploaderbot
WORKDIR /MegaUploaderbot

# Install pip (if not installed already) and upgrade pip
RUN curl -fsSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py

# Install Python dependencies
RUN pip3 install -U -r requirements.txt

# Set the command to run your application
CMD ["python3", "bot.py"]
