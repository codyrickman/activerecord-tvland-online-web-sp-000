class Show < ActiveRecord::Base
  has_one :network
  has_many :characters
end
