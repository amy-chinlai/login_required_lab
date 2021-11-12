class SessionsController < ApplicationController
before_action :logged_in?

    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to '/sessions/new'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
    end

    private

    def logged_in?
        if !current_user
            redirect_to '/sessions/new'
        end
    end


end