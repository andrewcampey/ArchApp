class Organisation < ActiveRecord::Base
	has_many :users
	attr_accessible :name, :schema
	
	validates :name,  presence: true
	validates :schema,  presence: true
end
