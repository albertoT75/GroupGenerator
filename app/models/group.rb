class Group < ApplicationRecord
  has_many :employees
  belongs_to :user
end
