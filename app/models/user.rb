# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  firstname       :string(255)
#  lastname        :string(255)
#  remember_token  :string(255)
#  schema          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base

	attr_accessible :email, :firstname, :lastname, :password, :password_confirmation, :schema
	has_secure_password
	
	before_save :create_remember_token
	  
	validates :firstname,  presence: true
	validates :lastname,  presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:   true,
					format:     { with: VALID_EMAIL_REGEX },
					uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true
	
	private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
	
end
