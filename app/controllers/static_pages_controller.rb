class StaticPagesController < ApplicationController
  before_filter :send_email_params, only: [:send_email]

  def home
    @cover_blog = Blog.cover_blog
    @recent_blogs = Blog.recent_blogs
  end

  def send_email
    ContactMailer.contact_email(send_email_params).deliver
    redirect_to root_url(email_success: true)
  end

  private
  def send_email_params
    params.require(:send_email).permit(:name, :email, :company, :message)
  end
end
