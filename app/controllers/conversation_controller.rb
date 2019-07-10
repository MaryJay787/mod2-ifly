class ConversationController < ApplicationController 
def index
    @conversations = Conversation.all
end 

def new 
    @conversation = Conversation.new
end 

def show 
    @conversation = Conversation.find(param[:id]) 
end 

def create
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      redirect_to @conversation
    else
      redirect_to conversation_path
    end
  end

  private

    def conversaton_params
      params.require(:conversation).permit(:sender_id, :recipient_id)
    end
send

end 