class LoansController < ApplicationController
  def index
    @loans = Loan.all
    respond_with(@loans)
  end

  def show
    @loan = Loan.find(params[:id])
    respond_with(@loan)
  end

  def new
    @loan = Loan.new
    respond_with(@loan)
  end

  def edit
    @loan = Loan.find(params[:id])
  end

  def create
    @loan = Loan.new(params[:loan])
    @loan.save
    respond_with(@loan)
  end

  def update
    @loan = Loan.find(params[:id])
    @loan.update_attributes(params[:loan])
    respond_with(@loan)
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    respond_with(@loan)
  end
end
