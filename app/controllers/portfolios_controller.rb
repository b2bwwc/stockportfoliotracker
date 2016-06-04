class PortfoliosController < ApplicationController

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new params.require(:portfolio).permit(:name)
    @portfolio.user_id = current_user.id
    if @portfolio.save
      redirect_to root_path #want this to redirect_to user_path w/ param user_id
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

  def destroy
  end
end
