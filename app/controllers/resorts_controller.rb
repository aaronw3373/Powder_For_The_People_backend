class ResortsController <OpenReadController
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
  @Favorites = Favorite.where resort:(params[:id])
  @stats = @Favorites.length
    if @resort
      render json: {resort: @resort, stats: @stats}
    else
     render json: @resort.errors, status: :unprocessable_entity
    end
  end

  #Get /resorts/find  by name
  def find_by_name
    fuzzy = FuzzyMatch.new(Resort.all, :read => :name)
    @resort = fuzzy.find(params[:name])
    if @resort
      w_api = Wunderground.new(ENV['WUNDERGROUND'])
      begin
        @weather = w_api.forecast_and_conditions_for(@resort.location)
        if @resort['latitude'].nil? || @resort['longitude'].nil?
          @resort.update(latitude: @weather['current_observation']['display_location']['latitude'], longitude: @weather['current_observation']['display_location']['longitude'])
          @resort = fuzzy.find(params[:name])
          @powRating = calculate_with_weather
        end
        @powRating = calculate_with_weather(calculate_without_weather(@resort), @weather, @history)
        render json: {resort: @resort, powRating: @powRating, temp: @weather['current_observation']['temp_f']}
      rescue
        @powRating = calculate_without_weather(@resort)
        render json: {resort: @resort, powRating: @powRating}
      end
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

  #DESTROY by name
  def destroyname
    @resort = Resort.find_by name: params[:name]
    @resort.destroy
    head :no_content
  end

  #DESTROY by id
  def destroyid
    @resort = Resort.find params[:id]
    @resort.destroy
    head :no_content
  end

  private
  def resort_params
   params.require(:resort).permit(:name, :vertical, :acres, :location, :longitude, :latitude)
  end

  def calculate_without_weather(resort)
    ((4000 + resort.vertical + resort.acres)/700);
  end

  def calculate_with_weather(resort,weather,history)
    currentTempC = weather['current_observation']['temp_c']
    if currentTempC  > -8 && currentTempC < 4
      tempScore = 2
    elsif currentTempC >=4 && currentTempC <= 8
      tempScore = 1
    elsif currentTempC >= -8 && currentTempC <= -12
      tempScore = 1
    else
      tempScore = 0
    end

    forecastSnow = weather['forecast']['simpleforecast']['forecastday'][0]['snow_allday']['in'] + 1
    powRating = resort * forecastSnow + tempScore
    powRating
  end

end
