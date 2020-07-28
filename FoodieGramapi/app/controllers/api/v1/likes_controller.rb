class Api::V1::LikesController < ApplicationController
    def index
        like = Like.all 
        render json: like, include: [:user]
    end 

    def create
        like = Like.create!(like_params)
        render json: like
    end 

    def update
        like = Like.find(params[:id])
        if like.save 
            render json: like, status: :accepted
        else 
            render json: { errors: like.errors.full_messages }, status: :unprocessible_entity
        end 
    end 

    private 

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end 

    # def liked_posts

    # end 
end
