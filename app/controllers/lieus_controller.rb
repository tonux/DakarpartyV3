class LieusController < InheritedResources::Base
	before_filter :doit_etre_connecte, :admin_lieu
	def admin_lieu
		unless user_signed_in? and current_user.admin?
			flash[:notice] = 'Vous ne disposez pas des droits pour cacceder la page.'
      		redirect_to root_path
		end
	end
end
