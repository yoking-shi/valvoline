class UsersController < ApplicationController
  layout 'users', only: %i[sign_up sign_in forget_password]

  def index; end

  def new
    @user = User.new
  end

  def create; end

  def to_sign_in; end

  def forget_password; end

  def sign_out; end
end
