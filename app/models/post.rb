# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  # belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
  # validates :user, presence: true
end
