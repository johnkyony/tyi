# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string
#  body         :text
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
# Indexes
#
#  index_posts_on_category_id      (category_id)
#  index_posts_on_category_tag_id  (category_tag_id)
#  index_posts_on_user_id          (user_id)
#

class Post < ApplicationRecord
  belongs_to :user , required: true
  belongs_to :category , required: true
  has_many   :category_tag 

  validates :title , :body , presence: true 
 
  
  def self.published
    where('published_at NOTNULL')
  end
  def self.drafts
    where('published_at IS NULL')
  end
  def publish
    self.published_at = Time.zone.now
    
    save
  end

  def save_as_draft(post_params)
    self.published_at = nil
    self.tilte = post_params.title
    self.body = post_params.body
    
    save(validate: true)
  end

  def unpublish
    self.published_at = nil
  end

  def published?
    published_at.present?
  end

  def words
    body.split(' ')
  end

  def word_count
    words.size
  end
  def self.new_draft_for(user , post_params )
    post = self.new(user_id: user.id)
    post.save_as_draft(post_params)
    post
  end  
  
  def generate_lead!
    if self.published?
      post_body = Nokogiri::HTML::Document.parse(self.body)
      if post_body.css('h2').size > 0
        self.lead = post_body.css('h2')[0].to_s
      elsif post_body.css('h3').size > 0
        self.lead = post_body.css('h3')[0].to_s
      elsif post_body.css('p').size > 0
        self.lead = post_body.css('p')[0].to_s
      end
    end
  end
  
end
