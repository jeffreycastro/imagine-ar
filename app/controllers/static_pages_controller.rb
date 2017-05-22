class StaticPagesController < ApplicationController
  before_filter :send_email_params, only: [:send_email]

  def home
  end

  def send_email
    # ExampleMailer.sample_email(send_email_params).deliver
  end

  private
  def send_email_params
    params.require(:send_email).permit(:name, :email, :company, :message)
  end
end
