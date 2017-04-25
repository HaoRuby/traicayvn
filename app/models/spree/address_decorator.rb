module Spree
	Address.class_eval do
		validates :city, if: :require_city?

		def require_zipcode?
      false
    end

    def require_city?
    	false
    end
	end
end