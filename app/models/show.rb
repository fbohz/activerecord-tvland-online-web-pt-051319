class Show < ActiveRecord::Base
  has_many :characters 
  belongs_to :network
  has_many :actors, through: :characters
  
  def actors_list 
    binding.pry
    actors each do |actor|
      "#{actor.name}"
    end 
  end
end