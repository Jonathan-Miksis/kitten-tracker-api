class KittensController < ApplicationController

  def index 
    kittens = Kitten.all
    render json: kittens.as_json
  end


end
