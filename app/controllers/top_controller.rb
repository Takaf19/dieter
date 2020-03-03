class TopController < ApplicationController
  def index
    @messages = Message.includes(:user).limit(10).order(id: "DESC") 
  end
end
