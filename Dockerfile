FROM ubuntu:xenial

# Install dependencies
RUN apt-get update 
RUN apt-get install build-essential checkinstall wget -y 
RUN apt-get install git postgresql-client zlib1g-dev libffi-dev libssl-dev libpq-dev -y 
RUN rm -rf /var/lib/apt/lists/*

# Install Python
WORKDIR /usr/src
RUN wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz && tar xzf Python-3.7.4.tgz
RUN cd Python-3.7.4 && ./configure && make install
RUN cd ..
RUN rm -rf Python-3.7.4 && rm -rf Python-3.7.4.tgz
RUN python3 -V

# RUN apt-get install python-venv -y

# Install PIP
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip -V

# Add Application
ADD . /app
WORKDIR /app

RUN python3 -m venv env
RUN /bin/bash -c "source env/bin/activate"

RUN pip install -r requirements.txt