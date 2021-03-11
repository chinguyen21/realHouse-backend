class MessagesController < ApplicationController


  def create
    # byebug
    message = Message.create(
      sender_name: messages_params[:sender_name], 
      sender_email: messages_params[:sender_email],
      sender_phone: messages_params[:sender_phone],
      message: messages_params[:message],
      user_id: Property.find(params[:id]).user_id
      )
    render json: { reply: "Thank you for contacting. The owner will get back to you soon!"}
  end

  private

  def messages_params
    params.permit(:sender_email, :sender_name, :sender_phone, :message)
  end

end