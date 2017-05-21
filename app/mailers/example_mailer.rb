class ExampleMailer < ActionMailer::Base
  default from: "info.imaginear@gmail.com"

  def sample_email
    mail(to: 'castrojeffreym@gmail.com', subject: 'Sample Email')
  end
end