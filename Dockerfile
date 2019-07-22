FROM osgeo/gdal:ubuntu-small-latest

# Install dependencies
RUN apt-get update \
    # && apt-get install checkinstall -y \
    && apt-get install postgresql-client zlib1g-dev libffi-dev libssl-dev libpq-dev python3-venv python3-pip -y \
    && rm -rf /var/lib/apt/lists/* \
    && python3 -V

# Add Application
ADD . /app
WORKDIR /app

# Set GDAL PATHS for gcc complier
# ENV CPLUS_INCLUDE_PATH /usr/include/gdal \ 
#     C_INCLUDE_PATH /usr/include/gdal

RUN python3 -m venv env \
    && /bin/bash -c "source env/bin/activate" \
    && pip3 install -r requirements.txt