class Contact < ActiveRecord::Base
	# Validation
	# Associations
	# callbacks
	# sql quires
	validates :name, :email, :cell, :suject, :presence => true
	#validates :email, format: { with: /[a-z0-9._]*(@){1}[a-z0-9]*(\.)[a-z]{3}/,
    #message: "Enter correct format" }, uniqueness: true
    validates :cell, numericality: { only_integer: true }, length: { is: 10 }
    #has_attached_file :image#, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    #validates_attachment :image
end
