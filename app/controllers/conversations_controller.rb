class ConversationsController < ApplicationController
  before_action :authenticate

  def index
    @flyers = Flyer.all
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @conversation = Conversation.new
  end

  def create
    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
      redirect_to conversation_messages_path(@conversation)
  end

  private

  def conversaton_params
    params.require(:conversation).permit(:sender_id, :recipient_id)
  end

end
