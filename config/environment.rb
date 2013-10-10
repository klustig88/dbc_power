# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
DbcPower::Application.initialize!

ENV['OAUTH_TOKEN'] = "7ffcb54559590618af6a42ccf383910bb0c8846fec5b76e699cf5bf9e383d40e"
ENV['OAUTH_SECRET'] = "b062a6d3e7b21040dad2fbadf898e3d89e14398d00e79a736fd4a6176cec7a74"
ENV['OAUTH_REDIRECT'] = "http://localhost:3000/auth"

