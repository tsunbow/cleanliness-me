class MessagesController < ApplicationController

  def create
    @message = Message.create(message_params)
    if  @message.save
      ActionCable.server.broadcast "message_channel", message: @message
    end
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, clean_id: params[:clean_id])
  end

end
