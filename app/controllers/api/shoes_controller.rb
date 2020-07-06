class Api::ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    render 'index.json.jb'
  end

  def show
    @shoe = Shoe.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @shoe = Shoe.new(
      brand: params[:brand],
      price: params[:price],
      color: params[:color],
    )
    @shoe.save  
    render 'show.json.jb'
  end
end
