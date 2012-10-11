class Organisation < ActiveRecord::Base
	attr_accessible :name, :schema
	
	validates :name,  presence: true
	validates :schema,  presence: true
end
