module Spree
	Address.class_eval do
		
		validates :city, allow_blank: true

		def require_zipcode?
      false
    end
	end
end