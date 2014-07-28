class SystemController < ApplicationController
	def index
		if current_user.present? || current_admin.present?
		else
			redirect_to root_path
		end
	end
	def provedor
		@users = User.all
	end

	def mostrar_provedor
		@user = User.find(params[:id])
	end


end
