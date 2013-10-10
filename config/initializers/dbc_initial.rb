APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

# Set up dbc token
env_config = YAML.load_file(APP_ROOT.join('initializers', 'dbc_config.yml'))

env_config.each do |key, value|
  ENV[key] = value
end

DBC::token = ENV['DBC_KEY']
