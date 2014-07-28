class InstitutionalController < ApplicationController

	def index
		if current_user.present? 
			redirect_to  system_index_path
		end
	end
end
