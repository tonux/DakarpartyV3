class UsersController < InheritedResources::Base

  before_filter :doit_etre_connecte, :admin_evenement, :except => [:show]


  def admin_evenement
    unless user_signed_in? and (current_user.admin?)
      flash[:notice] = 'Vous ne disposez pas des droits pour acceder la page.'
      redirect_to root_path
    end
  end

end
