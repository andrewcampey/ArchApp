# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  firstname       :string(255)
#  lastname        :string(255)
#  timestamps      :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
	before { @user = User.new(firstname: "Example User", lastname: "Example User", email: "user@example.com") }

	subject { @user }

	it { should respond_to(:email) }
	it { should respond_to(:firstname) }
	it { should respond_to(:lastname) }
	
	validates :firstname,  presence: true
	validates :lastname,  presence: true
	validates :email, presence: true
end
