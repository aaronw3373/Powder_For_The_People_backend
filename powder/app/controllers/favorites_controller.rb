class FavoritesController <ApplicationController

  def show
    @favorites = Favorite.where user:(params[:id])
    if @favorites
      render json: @favorites
    else
     render json: @favorites.errors, status: :unprocessable_entity
    end
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      render json: @favorite, status: :created
    else
     render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  private
  def favorite_params
   params.require(:favorite).permit(:user, :resort)
  end
end
