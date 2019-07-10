class MessagesController < ApplicationController 
    def index
        @messages = Message.all
    end 
    
    def new 
        @message = Message.new
    end 
    
    def show 
        @message = Message.find(param[:id]) 
    end 
    
    def create
        @message = Message.new(message_params)
        if @message.save
          redirect_to @message
        else
          redirect_to message_path
        end
      end
    
      private
    
        def message_params
          params.require(:conversation).permit(:content, :conversation_id, :user_id)
        end
    
    end
    
    end 