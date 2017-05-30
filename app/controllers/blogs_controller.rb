class BlogsController < ApplicationController
  before_action :set_blog, only: [:show]

  def show
    @other_recent_blogs = Blog.other_recent_blogs(@blog.id)
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
