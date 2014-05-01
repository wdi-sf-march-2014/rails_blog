# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe User do

	describe 'email' do
	  it 'should not be empty' do
	  	user = FactoryGirl.build(:user, email: nil)
	  	user.should_not be_valid
	  end

	  it 'should be in email format' do
	  	user = FactoryGirl.build(:user, email: 'jackie.com')
	  	user.should_not be_valid
		end

		it 'should be unique' do
			user_1 = FactoryGirl.create(:user)
			user_2 = FactoryGirl.build(:user, email: user_1.email)
			user_2.should_not be_valid
		end

	end
end

