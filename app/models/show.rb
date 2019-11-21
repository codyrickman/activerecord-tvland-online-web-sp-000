class Show < ActiveRecord::Base
  has_one :networks
  has_many :characters
  has_many :actors, through: :characters
  def actors_list
    list = []
    self.actors.each do |actor|
      list << actor.full_name
    end
    return list
  end
end
