class Customer < ActiveRecord::Base
	has_many :orders #@customer.second.orders
	#has_one :account #@customer.first.account
	accepts_nested_attributes_for :orders
end
