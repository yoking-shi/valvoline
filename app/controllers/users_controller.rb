class UsersController < ApplicationController
  layout 'users', only: %i[sign_up sign_in forget_password]

  def index; end

  def new
    @user = User.new
  end

  def create
    if verify_rucaptcha?
    else
    end
  end

  def to_sign_in; end

  def forget_password; end

  def sign_out; end

  private

  def set_user
    @users = User.find(params[:id])
  end

  def user_params
    params.require('user').permit!
  end
end
