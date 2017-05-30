class ContactMailer < ActionMailer::Base
  default from: "info.imaginear@gmail.com"

  def contact_email(email_params)
  	@name = email_params[:name]
  	@email = email_params[:email]
  	@company = email_params[:company]
  	@message = email_params[:message]
    mail(to: 'info@imagine-ar.com', subject: 'imagineAR Contact Email')
  end
end