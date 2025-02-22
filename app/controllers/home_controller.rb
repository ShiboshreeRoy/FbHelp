class HomeController < ApplicationController
  def index
    current_user.admin!
  end
end
