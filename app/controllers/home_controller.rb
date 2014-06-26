class HomeController < ApplicationController
  def index
    redirect_to units_path
  end
end
