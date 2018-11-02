class Client < ApplicationRecord
  has_many :employees

  def employees
    employees.where(client: self)
  end

  def self.client_json
    HTTParty.get("https://rocketinsights-api.herokuapp.com/api/v1/groundcontrol/people",
                            :headers => { "Authorization" => "38ca6c42-f753-4cdf-b693-7758f1926366"})
    byebug
    JSON.parse(response)
  end
end
