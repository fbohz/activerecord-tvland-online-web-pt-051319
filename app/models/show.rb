class Show < ActiveRecord::Base
  has_many :characters 
  belongs_to :network
  has_many :actors, through: :characters
  
  def actors_list 
    binding.pry
    characters each do |character|
      "#{character.actor}"
    end 
  end
end