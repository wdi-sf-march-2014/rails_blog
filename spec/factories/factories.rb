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
 
  sequence :email do |n|
    "email#{n}@jade.com"
  end


  # factory :comment do
  # end

  # factory :post do
  #   title "Rspec"
  #   body ""
  # end

 factory :user do
  name "Jade"
  email
  password "password"
  password_confirmation "password"
  password_digest "password"
  remember_token "password"
	end
	
end

