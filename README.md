# README

A simple rails application that mounts sidekiq UI and serves sidekiq metrics at /metrics path.

It uses https://github.com/Strech/sidekiq-prometheus-exporter to serve sidekiq metrics.

Specify your redis URL using env - SIDEKIQ_REDIS_URL

