class Employee < ApplicationRecord
  belongs_to :group
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :department, presence: true,
end
