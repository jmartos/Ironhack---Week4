class Post < ActiveRecord::Base
  belongs_to :concert
  validates :comment, presence: {message: "can´t be blank :("}
end
