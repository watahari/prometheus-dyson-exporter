FROM python:3.10-slim-buster

# Create config directory
RUN mkdir -p /config

# Install package
WORKDIR /app
COPY . .
RUN pip3 install .

# Set Environment Variables
ENV EXPORTER_PORT="9672"
ENV EXPORTER_LOG_LEVEL="INFO"
ENV CONFIG_PATH="/config/devices.ini"

ENTRYPOINT ["dyson-exporter"]