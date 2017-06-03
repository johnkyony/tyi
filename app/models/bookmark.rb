# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bookmarks_on_post_id  (post_id)
#  index_bookmarks_on_user_id  (user_id)
#

class Bookmark < ApplicationRecord
  belongs_to :post
  belongs_to :user
  
  validates :post , presence: true , uniqueness: true 
  validates :user , presence: true 
end
