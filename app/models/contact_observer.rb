class ContactObserver < ActiveRecord::Observer
	observe Contact
	def before_create(contact)
		contact.name.upcase!
	end
end
