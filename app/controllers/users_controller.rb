class UsersController < ApplicationController
  layout 'users', only: %i[sign_up sign_in forget_password]

  def index; end

  def sign_up
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if verify_rucaptcha?
      if @user.save
        flash[:notice] = '恭喜您加入我们！'
        redirect_to root_path
      else
        flash[:alert] = @user.errors.messages
        render :sign_up, local: @user
      end
    else
      flash[:alert] = '验证码错误'
      render :sign_up, local: @user
    end
  end

  def to_sign_in
    if params[:account].present? && params[:password].present?
      @user = User.find_by_account(params[:account])
      if @user.present?
        if @user.authenticate(params[:password])
          expires = 1.hours
          expires = 7.days if params[:remenber].present?
          cookies[:token] = { value: @user.token, expires: expires }
          flash[:notice] = '登录成功！'
          redirect_to root_path
        else
          flash[:alert] = '请填写正确的密码！'
          redirect_to :sign_in
        end
      else
        flash[:alert] = '请填写正确的用户名！'
        redirect_to :sign_in
      end
    else
      flash[:alert] = '请填写正确的用户名和密码！'
      redirect_to :sign_in
    end
  end

  def forget_password; end

  def change_password; end

  def sign_out; end

  private

  def set_user
    @users = User.find(params[:id])
  end

  def user_params
    params.require('user').permit!
  end
end
