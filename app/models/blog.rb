class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :cover_image, CoverImageUploader

  scope :cover_blog, -> { where(is_cover: true).first }
  scope :recent_blogs, -> { where(is_cover: false).select(:id, :title, :slug).last(8) }
  scope :other_recent_blogs, -> (curr_id = nil) { where.not(id: curr_id).select(:id, :title, :slug).last(8) }
  scope :all_active, -> { where(is_active: true) }
  scope :all_inactive, -> { where(is_active: false) }

  validates_presence_of :title, :content

  def date_posted
    ["Posted", created_at.strftime("%d %B %Y")].join(" ")
  end

  def previous_blog
    self.class.all_active.where("created_at < ?", created_at).order(created_at: :asc).last
  end

  def next_blog
    self.class.all_active.where("created_at > ?", created_at).order(created_at: :asc).first
  end

  def deactivate
    update_attribute(:is_active, false)
  end

  def activate
    update_attribute(:is_active, true)
  end

  def self.reset_other_cover_blog(new_cover_blog_id)
    other_cover_blog = Blog.where(is_cover: true).where.not(id: new_cover_blog_id).first
    return if other_cover_blog.nil?
    other_cover_blog.update_attribute(:is_cover, false)
  end

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
