class Spree::Admin::StoreInfosController < Spree::Admin::BaseController
	include Spree::Backend::Callbacks


	def edit
		@info = Spree::StoreInfo.first
	end

	def update
		info = Spree::StoreInfo.first
		info.update!(info_params)

		flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:setting_infomation))
    redirect_to edit_admin_store_info_path(id: 1) 
	end

	def info_params
    params.require(:store_info).permit(:address, :phone, :description)
  end

end