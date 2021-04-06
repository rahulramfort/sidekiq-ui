Sidekiq.configure_client do |config|
  config.redis = { url: ENV['SIDEKIQ_REDIS_URL'] }
end
