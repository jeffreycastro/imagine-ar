class Admin::BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :activate, :deactivate]

  def index
    @blogs = Blog.all.order('updated_at DESC').page(params[:page])
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        Blog.reset_other_cover_blog(@blog.id) if @blog.is_cover
        format.html { redirect_to admin_blog_url(@blog), notice: "Blog was successfully created" }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        Blog.reset_other_cover_blog(@blog.id) if @blog.is_cover
        format.html { redirect_to admin_blog_url(@blog), notice: "#{@blog.title} was successfully updated" }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @blog_title = @blog.title
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to admin_blogs_url, notice: "#{@blog_title} was successfully deleted" }
      format.json { head :no_content }
    end
  end

  def deactivate
    @blog.deactivate
    respond_to do |format|
      format.html { redirect_to admin_blogs_url, notice: "#{@blog.title} is now hidden from public viewing" }
      format.json { head :no_content }
    end
  end

  def activate
    @blog.activate
    respond_to do |format|
      format.html { redirect_to admin_blogs_url, notice: "#{@blog.title} is now available for public viewing" }
      format.json { head :no_content }
    end
  end

  private

  def blog_params
    params.require(:blog).permit(
      :title,
      :content,
      :is_cover,
      :cover_image
    )
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
