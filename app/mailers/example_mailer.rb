class ExampleMailer < ActionMailer::Base
  default from: "info.imaginear@gmail.com"

  def sample_email(email_params)
    mail(to: 'info@imagine-ar.com', subject: 'Sample Email')
  end
end