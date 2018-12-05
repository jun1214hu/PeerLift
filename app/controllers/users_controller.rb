class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

  # move this to application
  # change to is_authenticated
  before_action :check_user, only: [:show, :edit, :update, :destroy]
  # :unless => :public_case
  # make a new function :public_case
  # define a public page

#check_admin for index and edit. Test by making an admin user
  before_action :user_is_admin?, only: [:index, :destroy]

  # GET /users
  # GET /users.json
  def index
    #only admins should be able to do this
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to "/me", notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to "/me", notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

# check before action, except index and new, check_user is current user

# should be protected
# Move to application controller
# Add --> def public_page
# true if ['home', 'about'].includes?(request.route)
    def check_user
      if current_user != @user #or if current_user is not an admin
        redirect_to root_url, alert: "Sorry, This Profile belongs to someone else !"
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :string,)
    end
end