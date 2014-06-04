class UnitsController < ApplicationController
  respond_to :json

  def index
    @units = Unit.all
    respond_with :json, @units
  end
end
