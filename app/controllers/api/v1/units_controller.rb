module API
  class V1::UnitsController < V1::BaseController

    def index
      @units = Unit.includes(:unit_leader_skill, :leader_skill, :evolution_recipe, :after_evo_unit, :statuses).all
      render :json => @units, :status => :ok
    end

    def show
      @unit = Unit.find(params[:id])
      render :json => @unit, :status => :ok
    end
  end
end
