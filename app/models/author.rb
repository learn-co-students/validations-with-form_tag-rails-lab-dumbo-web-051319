class Author < ActiveRecord::Base
  validates :name, presence: { is: true, message: " can't be blank" }
  validates :email, uniqueness: { is: true, message: " has been registered" }
  validates :phone_number, length: {is: 10, message: " is Invalid"}
end
