class AdminController < ApplicationController
  def index
    @users = User.all
    @user = User.new

  end
end
