class TopsController < ApplicationController
  def main
    render 'login_form'
  end

  def login
    user = User.find_by(uid: params[:uid])
    if user && BCrypt::Password.new(user.pass) == params[:pass]
      session[:login_uid] = params[:uid]
      redirect_to root_path
    else
      render 'login_form'
    end
  end

  def logout
    session[:login_uid] = nil
    render 'login_form'
  end
end
