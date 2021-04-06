require 'sidekiq/web'
require 'sidekiq/cron/web'
require 'sidekiq/prometheus/exporter'


Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount Sidekiq::Web => "/sidekiq"
  mount Sidekiq::Prometheus::Exporter => '/metrics'
end
