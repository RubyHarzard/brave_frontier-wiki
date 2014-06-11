module API
  class V1::UnitsController < V1::BaseController

    def index
      @units = Unit.all
      render :json => @units, :status => :ok
    end

    def show
      @unit = Unit.find(params[:id])
      render :json => @unit, :status => :ok
    end
  end
end
