class Show < ActiveRecord::Base
  has_many :characters 
  belongs_to :network
  has_many :actors, through: :characters
  
  def self.actors_list 
  end 
end