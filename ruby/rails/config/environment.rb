# Load the rails application
require File.expand_path('../application', __FILE__)

# Load global configurations
CONFIG = Hashie::Mash.new YAML.load_file(Rails.root.join("config", "application.yml"))[Rails.env]

# Initialize the rails application
YoudaoBlog::Application.initialize!
