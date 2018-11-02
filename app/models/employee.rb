class Employee < ApplicationRecord
  belongs_to :client
  has_many :assignments
end
