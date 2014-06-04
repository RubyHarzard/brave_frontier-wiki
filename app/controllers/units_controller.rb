class UnitsController < ApplicationController
  respond_to :json

  def index
    @units = Unit.first
    respond_with :json, @units
  end
end
