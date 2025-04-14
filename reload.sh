#This bash-script execute an autoreload your Prometheus container, if you made a change to the 'prometheus.yml' file

#!/bin/bash

if ! command -v inotifywait &> /dev/null; then
    echo "You don't have 'inotifywait' in your computer."
    exit 1
fi

echo "Start monitoring of changes in prometheus.yml..."
while true; do
    inotifywait -e close_write,delete,moved_to --format "%e" ./prometheus/prometheus.yml && \
    echo "Reloading prometheus..." && \
    docker compose up -d --force-recreate prometheus && \
    echo "Successfuly."
done
