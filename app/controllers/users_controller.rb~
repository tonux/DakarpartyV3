class UsersController < InheritedResources::Base

	before_filter :doit_voir_user, :except =>[:user_signed_in, :user_signed_up]


	def doit_voir_user
		@user = User.find(params[:id])
     	unless user_signed_in? and ( current_user.admin? || (current_user == @user ))
			flash[:notice] = current_user.nom + ' Vous ne disposez pas des droits pour acceder la page.'
      		redirect_to root_path
		end
	end



end
