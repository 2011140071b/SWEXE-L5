class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    uid = params[:user][:uid]
    if !User.find_by(uid: uid)
      @user = User.new(uid: uid, pass: BCrypt::Password.create(params[:user][:pass]))
      @user.save
      redirect_to users_path
    else
      flash[:ex_same_user] = 'このユーザー名は使えません。'
      redirect_to new_user_path
    end
    
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end
end
