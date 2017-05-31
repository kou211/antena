class TagsController < ApplicationController

  before_action :move_to_index, except: :index

  def new
    @tag = Tag.new
  end
  
  def create
    Tag.create(tag_params)
    redirect_to controller: :topics, action: :new
  end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end

  def move_to_index
    redirect_to controller: :topics, saction: :index unless user_signed_in?
  end

end
