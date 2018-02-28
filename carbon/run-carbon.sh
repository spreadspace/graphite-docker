#!/bin/bash

exec carbon-cache --debug --config=/srv/config/carbon.conf --pidfile=/srv/carbon-cache.pid start
