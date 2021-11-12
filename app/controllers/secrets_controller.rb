class SecretsController < ApplicationController

    def show
        if !current_user
            redirect_to '/sessions/new'
        end
    end

    private
    
    def authenticated?
        current_user == params[:name]
    end

end