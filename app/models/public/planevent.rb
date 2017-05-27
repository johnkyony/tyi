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

class Planevent < ApplicationRecord
	
end
