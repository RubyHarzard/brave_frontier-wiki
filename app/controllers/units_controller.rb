class UnitsController < ApplicationController
  respond_to :json

  def index
    @units = Unit.all

    render :json => @units, :status => :ok
  end

  def show

  end
end
