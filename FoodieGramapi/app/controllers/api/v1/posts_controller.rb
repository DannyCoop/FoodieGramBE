class Api::V1::PostsController < ApplicationController
    def index
        posts = Post.all 
        render json: posts, include: [:user, :comments, :likes]
    end 

    def create 
        post = Post.create!(post_params)

        render json: post 
    end 

    def update 
        post = Post.find(params[:id])
        if post.save 
            render json: post, status: :accepted
        else 
            render json: { errors: post.errors.full_messages }, status: :unprocessible_entity
        end 
    end 

    private
    
    def post_params
        params.require(:post).permit(:caption, :image_url, :user_id )
    end 


end
