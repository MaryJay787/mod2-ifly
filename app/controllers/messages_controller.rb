class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def show
    @message = Message.find(param[:id])
  end


  def create
    @message = @conversation.messages.new(message_params)
    
    if @message.save
      redirect_to conversation_messages_path
    end
  end


  def destroy 
    @message = Message.find(params[:id]) 
    @message.destroy
    redirect_to conversation_messages_path
 end 

  private

  def message_params
    params.require(:message).permit(:content, :conversation_id, :flyer_id)
  end

end
