# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  firstname       :string(255)
#  lastname        :string(255)
#  schema          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	attr_accessible :email, :firstname, :lastname, :schema
	
	validates :email, presence: true
	validates :firstname,  presence: true
	validates :lastname,  presence: true
end
