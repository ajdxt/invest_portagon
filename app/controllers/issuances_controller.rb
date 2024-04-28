class IssuancesController < ApplicationController

  def index
    @issuances = Issuance.all
  end

  def show
    @issuance = Issuance.find(params[:id])
  end

  def new
    @issuance = Issuance.new
  end

  def create
    @issuance = Issuance.new(issuance_params)
    if @issuance.save
      redirect_to @issuance
    else
      render :new
    end
  end

  def edit
    @issuance = Issuance.find(params[:id])
  end

  def update
    @issuance = Issuance.find(params[:id])
    if @issuance.update(issuance_params)
      redirect_to @issuance
    else
      render :edit
    end
  end

  def destroy
    @issuance = Issuance.find(params[:id])
    @issuance.destroy
    redirect_to issuances_path
  end

  private

  def issuance_params
    params.require(:issuance).permit(:name, :amount, :start_date, :end_date)
  end
end
