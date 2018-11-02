class Assignment < ApplicationRecord
  belongs_to :employee
  belongs_to :client

  def assignment_coworkers(assignment)
    coworkers = assignment.coworkers #need to extract from JSON
    coworkers.map(&:names_and_roles) #todo
  end
end
