# == Schema Information
#
# Table name: titles
#
#  id           :integer          not null, primary key
#  body         :text
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class TitleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
