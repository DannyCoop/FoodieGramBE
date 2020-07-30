class Api::V1::CommentsController < ApplicationController
    def index 
        comments = Comment.all 
        render json: comments, include: [:user, :post]
    end 

    def show
        comment = Comment.find(params[:id])

        render json: comment, include: [:user, :post]
    end

    def create
        comment = Comment.create!(comment_params)
        render json: comment
    end 

    def update
        comment = Comment.find(params[:id])
        if comment.save 
            render json: comment, status: :accepted
        else 
            render json: { errors: comment.errors.full_messages }, status: :unprocessible_entity
        end 
    end 

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy

        render json: {}
    end

    private 

    def comment_params
        params.require(:comment).permit(:text, :user_id, :post_id)
    end 

end
