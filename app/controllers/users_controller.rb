class UsersController < ApplicationController
  def index
  end
  
  def show
    @user = current_user
    
  end

  def card
  end

  def logout
    @user = current_user
  end
  
end
