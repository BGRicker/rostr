class GroundControl
  require 'httparty'
  require 'rest-client'
  require 'indico'
  require 'rails/configuration'

  def initialize(opts = {})
    @data = HTTParty.get(ENV["BASE_URL"],
                         :headers => { "Authorization" => ENV["GC_AUTHORIZATION"],
                                       'Content-Type' => 'application/json' })
  end

  def parsed_response
    @data.parsed_response
  end

  def store_json
    @data.parsed_response.each do |project, index|
      existing_project = Client.find_by(name: project["currentProject"])
      if !existing_project
        client = Client.new do |key|
          key.project = project["currentProject"]
          key.skills = project["skills"]
          key.sponsor = project["name"]
          key.email = project["email"]
          key.name = project["currentClient"]
          key.days_left = project["daysLeft"]
          key.external_id = project["id"]
        end
        if client.save
          puts "saved new client"
        else
          puts "not saved"
        end
      end
    end
  end
end
