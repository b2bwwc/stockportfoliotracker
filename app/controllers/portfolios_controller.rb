class PortfoliosController < ApplicationController

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new params.require(:portfolio).permit(:name)
    @portfolio.user_id = current_user.id
    if @portfolio.save
      redirect_to portfolio_path(@portfolio.id)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def show
    @portfolios = Portfolio.all
    @portfolio = Portfolio.find params[:id]
  end

  def index
    @portfolios = Portfolio.all
  end

  def modify
    count = params[:count]
    stock = params[:stock_symbol]
    @portfolio = current_user.portfolios.find_by(name: params[:portfolio_name])
    p params
    p params
    @portfolios = current_user.portfolios.find(1)
  end

  def my_ports
    @portfolios = current_user.portfolios.all
    render 'index'
  end

  def destroy
  end
end
