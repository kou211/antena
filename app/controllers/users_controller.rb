class UsersController < ApplicationController

  before_action :move_to_index, except: :index

  def show
    @users = Topic.order("create_at DESC").page(params[:page]).per(5)
  end

private
  def move_to_index
    redirect_to controller: :topics, saction: :index unless user_signed_in?
  end

end
