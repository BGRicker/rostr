class NewAssignmentMailer < ApplicationMailer
  default from: "ashley@rocketinsights.com"

	def sample_email(assignment)
		@assignment = assignment
		mail(to: @user.email, subject: "New ")
	end
end
