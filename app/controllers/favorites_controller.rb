class FavoritesController <OpenReadController

  def index
    @favorites = Favorite.all
    if @favorites
      render json: @favorites
    else
      render json: @favorites.errors, status: :unprocessable_entity
    end
  end

  def show
    @favorites = Favorite.where user:(params[:id])
    if @favorites
      render json: @favorites
    else
      render json: @favorites.errors, status: :unprocessable_entity
    end
  end

  def create
    @favs = Favorite.where(user: favorite_params['user']).where(resort: favorite_params['resort'])
    if @favs.exists?
    else
      @favorite = Favorite.new(favorite_params)
      if @favorite.save
        render json: @favorite, status: :created
      else
        render json: @favorite.errors, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @favorite = Favorite.find_by(user: params[:idU], resort:params[:idR])
    @favorite.destroy
    head :no_content
  end

  private
  def favorite_params
   params.require(:favorite).permit(:user, :resort, :name)
  end
end
