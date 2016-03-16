# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.
Rails.application.initialize!

require 'magic_multi_connections'
connection_names = ActiveRecord::Base.configurations.keys.select do |name|
  name =~ /^#{ENV['RAILS_ENV']}_private/
end
@@connection_pool = connection_names.map do |connection_name|
  Object.class_eval <<-EOS
    module #{connection_name.camelize}
      establish_connection :#{connection_name}
    end
  EOS
  connection_name.camelize.constantize
end
