class UsersController < ApplicationController
  PER_RAGE = 20

  def index
    @users = User.page(params[:page]).per(PER_RAGE)
  end
end
