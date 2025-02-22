class HomeController < ApplicationController
  def index
    urrent_user.admin!
  end
end
