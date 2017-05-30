class Blog < ApplicationRecord
  scope :cover_blog, -> { where(is_cover: true).first }
  scope :recent_blogs, -> { where(is_cover: false).select(:id, :title).last(4) }

  def date_posted
    ["Posted", created_at.strftime("%d %B %Y")].join(" ")
  end
end
