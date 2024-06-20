# First stage: build stage
FROM python:3.9-alpine AS build

RUN apk update && apk upgrade

RUN apk add --no-cache \
    build-base \
    python3-dev \
    openblas-dev \
    freetype-dev \
    libpng-dev \
    pkgconfig \
    gfortran \
    libffi-dev \
    openssl-dev \
    musl-dev \
    libxml2-dev \
    libxslt-dev \
    zlib-dev \
    py3-numpy \
    py3-numpy-dev

# Remove conflicting headers from libressl-dev
RUN rm -rf /usr/include/openssl

# Install the necessary Python packages
RUN pip install --no-cache-dir matplotlib

# Second stage: runtime stage
FROM python:3.9-alpine

RUN apk update && apk upgrade

# Install runtime dependencies only
RUN apk add --no-cache \
    openblas-dev \
    freetype-dev \
    libpng-dev \
    libffi-dev \
    openssl-dev \
    musl-dev \
    libxml2-dev \
    libxslt-dev \
    zlib-dev \
    py3-numpy

WORKDIR /app

# Copy the installed packages from the build stage
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=build /usr/local/bin /usr/local/bin

# Copy your application code
COPY . .

# Set the entry point for your application
CMD ["python", "your_script.py"]
