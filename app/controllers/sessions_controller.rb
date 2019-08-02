class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]
    def new
    end
  
    def create
      if !params[:name] || params[:name].empty?
        redirect_to '/new'
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end
  
    def destroy
      session.delete :name
      redirect_to '/'
    end        
end
