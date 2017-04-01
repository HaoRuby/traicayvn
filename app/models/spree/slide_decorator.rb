module Spree
	Slide.class_eval do
			has_attached_file :image,
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
											#url: '/spree/slides/:id/:style/:basename.:extension',

  										path:           "/public/:class/:basename.:extension",
  										default_url:    "/public/:class/:basename.:extension",

											convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
			validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
		end
	end