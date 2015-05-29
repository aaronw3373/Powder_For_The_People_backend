class ResortsController < ApplicationController

  #GET /resorts
  def index
    @resorts = Resort.all
    if @resorts
     render json: @resorts
    else
     render json: @resorts.errors, status: :unprocessable_entity
    end
  end

  #GET /resorts/:id
  def show
  @resort = Resort.find params[:id]
    if @resort
      w_api = Wunderground.new(ENV['WUNDERGROUND'])
      @weather = w_api.forecast_and_conditions_for(@resort.state,@resort.location)
      render json: {resort: @resort, weather: @weather}
    else
     render json: @resort.errors, status: :unprocessable_entity
    end
  end

  #Get /resorts/find by name
  def find_by_name
    @resort = Resort.find_by name: params[:name]
    if @resort
      w_api = Wunderground.new(ENV['WUNDERGROUND'])
      @weather = w_api.forecast_and_conditions_for(@resort.state,@resort.location)
      render json: {resort: @resort, weather: @weather}
    else
      render json: @resort.errors, status: :unprocessable_entity
    end
  end

  #POST /resorts
  def create
    @resort = Resort.new(resort_params)
    if @resort.save
      render json: @resort, status: :created
    else
     render json: @resort.errors, status: :unprocessable_entity
    end
  end

  #PATCH /movies/:id
  def update
    @resort = Resort.find params[:id]
    if @resort.update(resort_params)
      head :no_content
    else
      render json: @resort.errors, status: :unprocessable_entity
    end
  end

  #DESTROY
  def delete
    @resort = Resort.find_by name: params[:name]
    @resort.delete
    head :no_content
  end

  private
  def resort_params
   params.require(:resort).permit(:name, :vertical, :acres, :state, :location)
  end

end
