class IndexfundsController < ApplicationController
  before_action :set_indexfund, only: [:show, :edit, :update, :destroy, :portfolios]

  # GET /indexfunds
  # GET /indexfunds.json
  def index
    @indexfunds = Indexfund.all
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
    @indexfund = Indexfund.new(indexfund_params)

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
    @indexfund.destroy
    respond_to do |format|
      format.html { redirect_to indexfunds_url, notice: 'Indexfund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def portfolios
    @portfolios = Portfolio.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indexfund
      @indexfund = Indexfund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indexfund_params
      params.require(:indexfund).permit(:name, :value)
    end
end
