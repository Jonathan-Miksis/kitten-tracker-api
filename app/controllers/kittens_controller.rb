class KittensController < ApplicationController

  def index 
    kittens = Kitten.all
    render json: kittens
  end

  def create
    kitten = Kitten.new(
      name: params[:name],
      age: params[:age],
      color: params[:color]
    )
    kitten.save
    render json: kitten
  end



end
