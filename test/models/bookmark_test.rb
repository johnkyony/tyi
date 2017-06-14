# == Schema Information
#
# Table name: bookmarks
#
#  id              :integer          not null, primary key
#  bookmarkee_type :string
#  bookmarkee_id   :integer
#  bookmarker_type :string
#  bookmarker_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  bookmarks_bookmarkee_bookmarker_idx                   (bookmarkee_id,bookmarkee_type,bookmarker_id,bookmarker_type) UNIQUE
#  bookmarks_bookmarkee_idx                              (bookmarkee_id,bookmarkee_type)
#  bookmarks_bookmarker_idx                              (bookmarker_id,bookmarker_type)
#  index_bookmarks_on_bookmarkee_type_and_bookmarkee_id  (bookmarkee_type,bookmarkee_id)
#  index_bookmarks_on_bookmarker_type_and_bookmarker_id  (bookmarker_type,bookmarker_id)
#

require 'test_helper'

class BookmarkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
