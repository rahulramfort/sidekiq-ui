# Sidekiq UI with Metrics

A simple rails application that mounts sidekiq UI and serves sidekiq metrics at /metrics path.

It uses https://github.com/Strech/sidekiq-prometheus-exporter to serve sidekiq metrics.

Specify your redis URL using env - SIDEKIQ_REDIS_URL

To run the application using the docker image,
```
docker run  -e SIDEKIQ_REDIS_URL='redis://sidekiq-redis:6379' -p 3000:3000 rahulramfort/sidekiq-ui:0.0.1
```
