#!/bin/bash

export GRAPHITE_API_CONFIG=${GRAPHITE_API_CONFIG:-/srv/config/api.yaml}
exec /usr/bin/gunicorn3 --bind 0.0.0.0:8080 --name=graphite-api graphite_api.app:app
