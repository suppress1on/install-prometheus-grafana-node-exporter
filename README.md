This repository will help you to download Prometheus, Grafana and Node Exporter. Below are the steps for installation.

Go to the desired directory and write this command:

$ git clone https://github.com/suppress1on/install-prometheus-grafana-node-exporter.git

Command will copy my repository. Later write this:

$ docker compose up -d

Containers will downloads. To check you can go to:
http://localhost:9090 (Prometheus)
http://localhost:9100 (Node Exporter)
http://localhost:3000 (Grafana)
