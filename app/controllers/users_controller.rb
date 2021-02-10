class UsersController < ApplicationController
  PER_RAGE = 20

  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(PER_RAGE)
  end
end
