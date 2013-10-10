Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :dbc, ENV['OAUTH_TOKEN'], ENV['OAUTH_SECRET'] # where to puut callback?, ENV['OAUTH_REDIRECT']
end