# frozen_string_literal: true

module V1
  class MessagesController < ApplicationController
    def index
      @message = Message.find(Message.pluck(:id).sample)
      render json: {
        message: @message
      }
    end
  end
end
