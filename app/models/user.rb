# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  superadmin_role        :boolean          default("false")
#  supervisor_role        :boolean          default("false")
#  user_role              :boolean          default("true")
#  editors_role           :boolean          default("false")
#  writers_role           :boolean          default("false")
#  dev_role               :boolean          default("false")
#  name                   :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   after_create :send_admin_mail
  has_many :posts
  act_as_bookmarker
  has_many :chatroom_users
  has_many :chatrooms , through: :chatroom_users
  has_many :messages
  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end
end
