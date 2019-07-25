class Show < ActiveRecord::Base
  has_many :characters 
  belongs_to :network
  has_many :actors, through: :characters
  
  def actors_list 
   # binding.pry
    self.actors.collect do |actor|
      actor.full_name
    end 
  end
  
  
  def actors_list
    self.actors.map{|actor| actor.full_name}
  end
end