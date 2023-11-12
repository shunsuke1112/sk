class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
      end
    def edit
        @comic = Comic.find(params[:id])
      end
end
