# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  post_id    :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
  end

  factory :post do
  end

 factory :user do
  name "MyString"
  email "MyString"
  password_digest "MyString"
  remember_token "MyString"
	end
	
end
