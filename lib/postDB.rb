class PostDB < ActiveRecord::Base
  self.abstract_class = true
  # establish_connection "#{RAILS_ENV}"
end
