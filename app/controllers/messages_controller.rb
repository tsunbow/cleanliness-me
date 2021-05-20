class MessagesController < ApplicationController

  def create
    @message = Message.create(message_params)
    if @message.valid?
      @message.save
      ActionCable.server.broadcast "message_channel", message: @message
    else
      redirect_to clean_path(@message.clean)
    end
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, clean_id: params[:clean_id])
  end

end
