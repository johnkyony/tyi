# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  title           :string
#  body            :text
#  published_at    :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  category_id     :integer
#  category_tag_id :integer
#
# Indexes
#
#  index_posts_on_category_id      (category_id)
#  index_posts_on_category_tag_id  (category_tag_id)
#  index_posts_on_user_id          (user_id)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
