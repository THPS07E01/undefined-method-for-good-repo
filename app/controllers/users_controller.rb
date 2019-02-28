class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @tasks = Task.all
    @categories = Category.all
  end
end
