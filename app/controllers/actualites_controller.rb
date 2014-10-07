class ActualitesController < InheritedResources::Base
	before_filter :doit_etre_connecte, :admin_actu , :except => [:show]

	def admin_actu
		unless user_signed_in? and (current_user.admin? || current_user.adminActu?)
			flash[:notice] = 'Vous ne disposez pas des droits pour cacceder la page.'
      		redirect_to root_path
		end
	end
end
