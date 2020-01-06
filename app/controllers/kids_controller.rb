class KidsController < ApplicationController
  def index
    @kids = Kid.all

    render json: { kids: @kids }
  end

  def create
    @kid = Kid.new({
      username: params[:kid][:username],
      description: params[:kid][:description],
      favorite_color: params[:kid][:favorite_color],
      age: params[:kid][:age],
    })

    if @kid.valid?
      @kid.save
      render json: { kid: @kid }
    else 
      render json: {message: "Username is 7-12 characters and kid must be between 6 and 15."}
    end 

  end
end
