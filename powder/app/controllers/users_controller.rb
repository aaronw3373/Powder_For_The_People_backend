class UsersController <ApplicationController

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
  def show
  @user = User.find params[:id]
    if @user
      render json: @user
    else
     render json: @user.errors, status: :unprocessable_entity
    end
  end

  #Get /users/find  by username
  def find_by_name
    @user = User.find_by username: params[:username]
    if @user
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
     render json: @user.errors, status: :unprocessable_entity
    end
  end

  #PATCH /movies/:id
  def update
    @user = User.find params[:id]
    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #DESTROY by name
  def destroyname
    @user = User.find_by username: params[:username]
    @user.destroy
    head :no_content
  end

  #DESTROY by id
  def destroyid
    @user = User.find params[:id]
    @user.destroy
    head :no_content
  end

  private
  def user_params
   params.require(:user).permit(:name,:username, :privileges)
  end

end
