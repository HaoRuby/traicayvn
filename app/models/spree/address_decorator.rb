module Spree
	Address.class_eval do
		with_options presence: false do
      validates :city
      validates :zipcode
      validates :phone, if: :require_phone?
    end
	end
end