class QuackController < ApplicationController
  def index
    @quacks = Quack.all
  end

  def new
    @quack = Quack.new
  end

  def show
    @quack = Quack.find(params[:id])
  end

  def create
    @quack = Quack.new(quack_params)

    @quack.save
    redirect_to @quack
  end

  private 
    def area_params
      params.require(:quack).permit(:phrase)
    end
    
end
