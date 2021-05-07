class UsersController < ApplicationController
    # def index
    #     reviews = Review.all 
    #     render json: reviews
    # end

    def show
        user = User.find(params[:id])
        if user
            render json: user
        else
            render json: { error: "Not found!" }, status: 404
        end
    end

    def create 
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

# private
    def user_params
        params.require(:user).permit(:username, :email, :password, :location, :avatar)
    end
end
