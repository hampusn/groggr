# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Groggr::Application.initialize!

# Use double quotes for html attributes instead of single quotes.
Haml::Template.options[:attr_wrapper] = '"'
