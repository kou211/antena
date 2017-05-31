class TopicsController < ApplicationController

  before_action :move_to_index, except: [:index, :create]

  def index
    @index_topic = Topic.where(user_id: 1)
    # @index_tag = Tag.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    Topic.create(topic_params)
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :url, :tag_id).merge(user_id: current_user.id)
    end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
