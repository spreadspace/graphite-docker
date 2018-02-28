#!/bin/bash

exec /usr/bin/carbon-cache --debug --config=/srv/config/carbon.conf --pidfile=/srv/carbon-cache.pid start
