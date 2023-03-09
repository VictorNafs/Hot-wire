class ApplicationController < ActionController::Base

    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
        annonces_path
      end
      
      def after_sign_up_path_for(resource)
        annonces_path
      end
      
      def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
      end
      

end
