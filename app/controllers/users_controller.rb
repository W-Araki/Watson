class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      # 保存後、ログインする
      log_in @user
      flash[:success] = "新規作成に成功しました。"
      redirect_to @user     #redirect_to user_url(@user)
    else
      render :new
    end
  end
  
  private
  
    def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end