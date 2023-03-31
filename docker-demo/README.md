# How to use this Docker Demo

## Purpose
The idea behind this build is to provide a single-node instance of the Elastic Stack, for a quick showcase of the functionality of the provided accelerators in this repository. This build does not have any authentication system implemented, serving for demonstration purposes **only**.

## Structure
This build creates:
1. An Elastic container
2. A Kibana container
3. A Logstash container
4. A barebones Alpine-container, only active for setup scripts of Kibana

The whole stack is based on Elastic 7.17.9

## Requisites
For this to work, you will need [Docker](https://www.docker.com/get-started/) and [Docker Compose](https://docs.docker.com/compose/) installed in your system. [Docker Desktop](https://www.docker.com/products/docker-desktop/) is a nice GUI that includes all the necessary tools and facilitates container management.

## Setup

You will need to modify two files:
1. In the [Docker Compose file](docker-compose.yml#L72), on the logstash configuration you need to choose (comment and uncomment) whether you wish to use direct Database access, or Monitor Probe access.
2. In the [Logstash Environment file](logstash/config/logstash.env), you will need to fill out the information corresponding to your selected source (DB or Monitor Probe). The rest of the information does not need changes for this showcase to work.
3. Launch the containers using the `docker compose up -d` command on the folder containing the `docker-compose.yml` file.
4. After launching the containers, load the [Kibana Dashboards 7.15](../data_visualization-kibana/dashboards/OutSystems%20viz%20for%20kibana%207-15-1.ndjson) file, to load all default indices, index patterns and accelerator dashboards.

## Notes
1. Depending on the speed of your system, right now it is possible that the `elasticsearch-setup` container will launch before the `elasticsearch` container is ready (you can check for errors via the `elasticsearch-setup` container logs). If this is the case, you simply need to wait for the `elasticsearch` container to be up and running, and then relaunching the `elasticsearch-setup` container (via Docker Desktop).
2. Once the `elasticsearch-setup` container has performed its necessary operations, it is safe to delete it.

## Usage
After setup is complete, you may access the [demo kibana environment](http://localhost:5601/).