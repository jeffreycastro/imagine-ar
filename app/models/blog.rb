class Blog < ApplicationRecord
  scope :cover_blog, -> { where(is_cover: true).first }
  scope :recent_blogs, -> { where(is_cover: false).select(:id, :title).last(8) }
  scope :other_recent_blogs, -> (curr_id = nil) { where.not(id: curr_id).select(:id, :title).last(8) }
  scope :all_active, -> { where(is_active: true) }
  scope :all_inactive, -> { where(is_active: false) }

  validates_presence_of :title, :content

  def date_posted
    ["Posted", created_at.strftime("%d %B %Y")].join(" ")
  end

  def previous_blog
    self.class.where("created_at < ?", created_at).order(created_at: :asc).last
  end

  def next_blog
    self.class.where("created_at > ?", created_at).order(created_at: :asc).first
  end

  def deactivate
    update_attribute(:is_active, false)
  end

  def activate
    update_attribute(:is_active, true)
  end
end
