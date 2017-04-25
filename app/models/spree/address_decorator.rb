module Spree
	Address.class_eval do
		with_options presence: true do
      validates :firstname, :lastname, :address1, :country
      validates :zipcode, if: :require_zipcode?
      validates :phone, if: :require_phone?
    end

		def require_zipcode?
      false
    end

	end
end