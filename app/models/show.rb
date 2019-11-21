class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_one :network

  def actors_list
    actors_l = []
    self.actors.each do |actor|
      actors_l << actor.full_name
    end
    return actors_l
  end
end
