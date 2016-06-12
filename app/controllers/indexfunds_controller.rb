class IndexfundsController < ApplicationController
  before_action :set_indexfund, only: [:show, :edit, :portfolios, :addportfolio]

  # GET /indexfunds
  # GET /indexfunds.json
  def index
    @indexfunds = Indexfund.all
  end

  def my_index
    @indexfunds = current_user.indexfunds
    render 'index'
  end

  # GET /indexfunds/1
  # GET /indexfunds/1.json
  def show
  end

  # GET /indexfunds/new
  def new
    @indexfund = Indexfund.new
  end

  # GET /indexfunds/1/edit
  def edit
  end

  # POST /indexfunds
  # POST /indexfunds.json
  def create
    @indexfund = current_user.indexfunds.new(indexfund_params)

    respond_to do |format|
      if @indexfund.save
        format.html { redirect_to @indexfund, notice: 'Indexfund was successfully created.' }
        format.json { render :show, status: :created, location: @indexfund }
      else
        format.html { render :new }
        format.json { render json: @indexfund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indexfunds/1
  # PATCH/PUT /indexfunds/1.json
  def update
    @indexfund = current_user.indexfunds.find(params[:id])
    respond_to do |format|
      if @indexfund.update(indexfund_params)
        format.html { redirect_to @indexfund, notice: 'Indexfund was successfully updated.' }
        format.json { render :show, status: :ok, location: @indexfund }
      else
        format.html { render :edit }
        format.json { render json: @indexfund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indexfunds/1
  # DELETE /indexfunds/1.json
  def destroy
    @indexfund = current_user.indexfunds.find(params[:id])
    @indexfund.destroy
    respond_to do |format|
      format.html { redirect_to indexfunds_url, notice: 'Indexfund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def portfolios
    @portfolios = Portfolio.all
    @connection = Connection.new
  end

  def addportfolio
    fund = @indexfund
    fund.connections.create(connection_params)
    redirect_to indexfund_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indexfund
      @indexfund = Indexfund.find(params[:id])
    end

    def connection_params
      params.require(:portfolio).permit(:value, :portfolio_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indexfund_params
      params.require(:indexfund).permit(:name, :value)
    end
end
