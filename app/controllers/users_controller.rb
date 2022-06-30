class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record

    def index 
        users = User.all
        render json: users, status: 200 
    end

    
    def show 
        user = User.find(params[:id])
        if user 
            render json: user, status: 200
        else 
            render json: {error: "User not found"}, status: 404
        end
    end


    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :email, :district, :username, :password_digest, :isCongressional)
    end
    
    def user_not_found
        render json: {error: "User not found"}, status: :not_found
    end
    
    def invalid_record(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end



end



# class Api::UsersController < ApplicationController
#     skip_before_action :authorize, only: :create
  
#     def create
#       user = User.create!(user_params)
#       session[:user_id] = user.id
#       render json: user, status: :created
#     end
  
#     def show
#       render json: @current_user
#     end
  
#     private
  
#     def user_params
#       params.permit(:username, :password, :password_confirmation, :image_url, :bio)
#     end
  
#   end







#   class Api::SessionsController < ApplicationController
#     skip_before_action :authorize, only: :create
  
#     def create
#       user = User.find_by(username: params[:username])
#       if user&.authenticate(params[:password])
#         session[:user_id] = user.id
#         render json: user
#       else
#         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
#       end
#     end
  
#     def destroy
#       session.delete :user_id
#       head :no_content
#     end
  
#   end