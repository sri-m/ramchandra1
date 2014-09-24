class UserMailer < ActionMailer::Base
  default from: "srinivaspkl@gmail.com"
  def registration_confirmation(contact)
  	@contact = contact
  	mail(:to => @contact.email, :subject => "we will contact you soon....")
  end

  def admin_email(contact)
  	@contact = contact
  	mail(:to => "chandtr@gmail.com", :subject => "User Details")
  end
end
