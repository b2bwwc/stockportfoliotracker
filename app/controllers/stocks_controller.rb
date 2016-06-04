class StocksController < ApplicationController

  def new
    # @stocks = Stock.all
    @stock = Stock.new
  end

  def create
    @stock = Stock.new params.require(:stock).permit(:symbol, :price, :volume, :name, :order)
    if @stock.save
      # redirect somewhere
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def show
    @stock = Stock.find params[:id]
  end

  def index
    @stocks = Stock.all
  end
end
