class ApplicationController < ActionController::Base

    protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)
      admins_backoffice_welcome_index_path
    elsif resource.is_a?(User)
      users_backoffice_welcome_index_path
    else
      super
    end
  end
end
