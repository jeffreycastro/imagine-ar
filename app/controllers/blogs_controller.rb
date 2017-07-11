class BlogsController < ApplicationController
  before_action :set_blog, only: [:show]

  def show
    @other_recent_blogs = Blog.all_active.other_recent_blogs(@blog.id)
  end

  private

  def set_blog
    @blog = Blog.friendly.find(params[:id])
  end
end
