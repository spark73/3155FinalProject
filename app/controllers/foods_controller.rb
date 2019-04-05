class FoodsController < ApplicationController
    
    def new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.new
    end
    
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.create(food_params)
        redirect_to restaurant_path(@restaurant)
    end
    
    def edit
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.find(params[:id])
    end
    
    def update
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.find(params[:id])
        if @food.update(food_params)
            redirect_to @restaurant
        else
            render edit_restaurant_food(@food)
        end
    end
    
    def destroy
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.find(params[:id])
        @food.destroy
        redirect_to restaurant_path(@restaurant)
    end
    
    private
        def food_params
            params.require(:food).permit(:name, :calories, :price)
        end
end
