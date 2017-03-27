class Spree::StoreInfo < ActiveRecord::Base
	has_attached_file :logo,
										#styles: { medium: "300x50>", thumb: "100x100>" },
                    url: '/spree/store_infos/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/store_infos/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
  validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
