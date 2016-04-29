class Product < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
end
