class Concert < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :artist, presence: {message: "can´t be blank :("}
  validates :venue, presence: {message: "can´t be blank :("} 
  validates :city, presence: {message: "can´t be blank :("}
  validates :date, presence: {message: "can´t be blank :("}
  validates :price, presence: {message: "can´t be blank :("}
  validates :description, presence: {message: "can´t be blank :("}
end
