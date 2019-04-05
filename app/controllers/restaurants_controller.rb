class RestaurantsController < ApplicationController
    
    def index
        @restaurants = Restaurant.all;
    end
    
    def update
        @restaurant = Restaurant.find(params[:id])
        if @restaurant.update(restaurants_params)
            redirect_to restaurants_path
        else
            render 'edit'
        end
    end
    
    def show
        @restaurant = Restaurant.find(params[:id])
        @comments = Comment.all
        @comment = @restaurant.comments.build
        @foods = @restaurant.foods.all
    end
    
    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect_to restaurants_path
    end
    
    def edit
        @restaurant = Restaurant.find(params[:id])
    end
    
    def create
        @restaurant = Restaurant.new(restaurants_params)
        if @restaurant.save(restaurants_params)
            redirect_to restaurants_path
        else
            render 'new'
        end
    end
    def new
        @restaurant = Restaurant.new
    end
    
end

private
    def restaurants_params
        params.require(:restaurant).permit(:name, :image)
    end