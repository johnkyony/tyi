# == Schema Information
#
# Table name: planevents
#
#  id             :integer          not null, primary key
#  planeventtitle :string
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class PlaneventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
