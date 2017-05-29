# == Schema Information
#
# Table name: category_tags
#
#  id          :integer          not null, primary key
#  name        :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_category_tags_on_category_id  (category_id)
#

class CategoryTag < ApplicationRecord
  belongs_to :category
end
