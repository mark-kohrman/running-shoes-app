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

  def update
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.update(
      brand: params[:the_brand],
      price: params[:the_price],
      color: params[:the_color]
    )
    render 'show.json.jb'
  end

  def destroy
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.destroy
    render json: {message: "Shoe successfully destroyed"}
  end
    
end
