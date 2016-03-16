require 'magic_multi_connections'
class ArticleDB < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :"#{Rails.env}_private"
end
