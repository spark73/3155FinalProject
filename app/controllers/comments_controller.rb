class CommentsController < ApplicationController
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @comment = @restaurant.comments.create(comment_params)
        redirect_to restaurant_path(@restaurant)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
