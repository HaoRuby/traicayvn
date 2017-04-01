class Spree::StoreInfo < ActiveRecord::Base
	has_attached_file :logo,
										s3_credentials: {
											access_key_id:     'AKIAICAYLNZVOL4QEO7A',
											secret_access_key: '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',
											bucket:            'traicayvn-assets',
											s3_region:         'us-west-2'
											},

										storage:        :s3,
										s3_headers:     { "Cache-Control" => "max-age=31557600" },
										s3_protocol:    "https",
										bucket:         'traicayvn-assets',
										url:            ":s3_domain_url",
										styles: { medium: "300x50>", thumb: "100x100>" },
										path:           "/public/:class/:style/:basename.:extension",
										default_url:    "/public/:class/:style/:basename.:extension",
										convert_options: { all: '-strip -auto-orient -colorspace sRGB' },
										default_style:  "medium"
	validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

=begin :old
has_attached_file :logo,
										styles: { medium: "300x50>", thumb: "100x100>" },
                    url: '/spree/store_infos/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/store_infos/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

=end
end
