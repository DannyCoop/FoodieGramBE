class Api::V1::UsersController < ApplicationController
    def index 
        user = User.all 
        render json: user 
    end 

    def create
        user = User.create!(user_params)
        render json: user 
    end 

    def update
        user = User.find(params[:id])
        if user.save 
            render json: user, status: :accepted
        else 
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end 
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :bio, :profilepic)
    end 


end
