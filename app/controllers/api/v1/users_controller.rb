module Api
    module V1

        class UsersController < ApplicationController   
            
            
            def create 
                @user= User.new(user_params)
                if(@user.save)
                    render status: create
                else
                    render json: @user.errors, status:  :unproccessable_entity 
                end

            end

            private 
            def user_params
                params.require(:user).permit(:name)

            end 
        end
    end

end