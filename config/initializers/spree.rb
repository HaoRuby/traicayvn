# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  country = Spree::Country.find_by_name('Vietnam')
  config.default_country_id = country.id if country.present?
end

Spree.user_class = "Spree::User"

attachment_config = {

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

  styles: {
      mini:     "48x48>",
      small:    "100x100>",
      product:  "223x200>",
      large:    "600x600>"
  },

  path:           "/public/:class/:id/:style/:basename.:extension",
  default_url:    "/public/:class/:id/:style/:basename.:extension",
  default_style:  "product"
}

attachment_config.each do |key, value|
  Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
end
