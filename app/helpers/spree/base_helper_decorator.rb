module Spree::BaseHelper

	#overrider: Hao
  def logo(image_path=Spree::Config[:logo], img_option: {})
      link_to image_tag(image_path, img_option), spree.root_path
  end

end