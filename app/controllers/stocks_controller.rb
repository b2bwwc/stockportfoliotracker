class StocksController < ApplicationController
  require 'yahoo-finance'

  def new
    # @stocks = Stock.all
    @stock = Stock.new
  end

  def search
    @portfolios = current_user.portfolios.all
    @stock = Stock.new
    # Uses the string provided by user to search API for stock information, hasn't made DB entry yet
    yahoo_client = YahooFinance::Client.new
    @stock_symbol = params[:stock_symbol].upcase
    data = yahoo_client.quotes([@stock_symbol], [:ask, :previous_close, :name], {raw: false})
    @result = data.first
  end

  def create
    @stock = Stock.new params.require(:stock).permit(:symbol, :price, :volume, :name, :order, :portfolio_id)
    @stock.portfolio_id = portfolio.id
    if @stock.save
      # redirect_to portfolio_stocks_path
      flash[:alert] = "Your stock saved"
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

  # def index
  #   @stocks = Stock.all
  # end
end
