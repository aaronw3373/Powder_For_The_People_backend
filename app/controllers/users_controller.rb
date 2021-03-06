class UsersController < OpenReadController

  #GET /users
  def index
    @users = User.all
    if @users
     render json: @users
    else
     render json: @users.errors, status: :unprocessable_entity
    end
  end

  #GET /users/:id
  def show_id
    @user = User.find params[:id]
      if @user
        render json: @user
      else
       render json: @user.errors, status: :unprocessable_entity
      end
  end

  def show_email
  @user = User.find_by email: params[:email]
    if @user
      render json: @user
    else
     render json: @user.errors, status: :unprocessable_entity
    end
  end

  #PATCH /movies/:id
  def update # FIXME chack that @current_use has god priv
    @user = User.find params[:id]
    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #DESTROY by name
  def destroyname # FIXME chack that @current_user has god priv
    @user = User.find_by email: params[:email]
    @user.destroy
    head :no_content
  end

  #DESTROY by id # FIXME chack that @current_use has god or admin priv
  def destroyid #FIXME user cannot be destroyed conflicting with favorites annd dependent destroy
    @favorites =  Favorite.where user: params[:id]
    @favorites.destroy_all

    @user = User.find params[:id]
    @user.destroy
    head :no_content
  end

  private
  def user_params
     params.require(:user).permit(:name, :email, :password, :privileges, :token)
  end

  def login_params
    params.require(:credentials).permit(:email, :password)
  end

end
