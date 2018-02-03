class SessionsController < ApplicationController
    def new

    end
    
    def create
        aluno = Aluno.find_by(email: params[:session][:email].downcase)
        if aluno && aluno.authenticate(params[:session][:password])
            session[:aluno_id] = aluno.id
            flash[:success] = "You have successfully logged in"
            redirect_to posts_path
        else
            flash.now[:danger] = "There was something wrong with your login information"
            render 'new'
        end 
    end
    
    def destroy
        session[:aluno_id] = nil
        flash[:success] = "You have logged out"
        redirect_to root_path   
    end
    
end
