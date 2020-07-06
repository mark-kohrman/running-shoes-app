class Api::ShoesController < ApplicationController
  def index
    render 'index.json.jb'
  end
end
