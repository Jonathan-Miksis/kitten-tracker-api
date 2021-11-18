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

  def show
    kitten = Kitten.find_by(id: params[:id])
    render json: kitten.as_json
  end


end
