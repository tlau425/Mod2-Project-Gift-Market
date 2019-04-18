class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create,]
  before_action :get_user, only: [:show,:edit,:update,:add_to_balance,:destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def update
    # @user.update(@user.dollars + user_params.values.first.to_i)
    @user.update(user_params)
    redirect_to cards_path
  end

  def deposit
    # render 'deposit'
    @user = User.find(current_user.id)
    # @price = User.update(params[:dollars]())
  end

  def add_to_balance
    added = params[:user][:dollars].to_i
    @user.update(dollars: @user.dollars + added)

    redirect_to cards_path
  end

  def create
    @user = User.new(user_params)
    @user.user_name.downcase

    if @user.save
    redirect_to login_path

    else
      flash[:error] = "Username is taken or invalid, please try again."
      render 'new'
    end
  end

    def destroy
      @user.destroy
      redirect_to cards_path
    end

  private
  def get_user

    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_name, :password, :dollars)
  end

  def money_params
    params.require(:user).permit(:dollars)
  end
end
