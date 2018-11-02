class Client < ApplicationRecord
  has_many :employees

  def current
    self.days_left > 0
  end
end
