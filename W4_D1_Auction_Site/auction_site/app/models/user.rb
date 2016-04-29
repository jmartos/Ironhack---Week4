class User < ActiveRecord::Base
  has_many :products, dependent: :destroy
  validates :email, presence: { message: "Please, complete email" }
  validates :email, uniqueness: { message: "This emial already exists" }
end

