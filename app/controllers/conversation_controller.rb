class ConversationController < ApplicationController 
def index
    @conversation = Conversation.all
end 

def new 
    @conversation = Conversation.new
end 

def show 
    @conversation = Conversation.find(param[:id]) 
end 

def create
    @conversation = Conversation.new(flyer_params)
    if @conversation.save
      redirect_to @conversation
    else
      redirect_to conversation_path
    end
  end

  private

    def conversaton_params
      params.require(:conversation).permit(:sender_id, :recipient)
    end

end

