class CommentsController < ApplicationController
  before_action :set_topic

  def create
    @topic.comments.create! params.expect(comment: [ :content ])
    redirect_to @topic
  end

  private
    def set_topic
      @topic = Topic.find(params[:topic_id])
    end

end
