class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end
  
  def create
    Tag.create(tag_params)
    redirect_to controller: :topics, action: :new
  end

  private
    def tag_params
      params.require(:tags).permit(:name)
    end

end
