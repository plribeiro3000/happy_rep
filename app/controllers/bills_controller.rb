class BillsController < ApplicationController
  def index
    @bills = Bill.all
    respond_with(@bills)
  end

  def show
    @bill = Bill.find(params[:id])
    respond_with(@bill)
  end

  def new
    @bill = Bill.new
    respond_with(@bill)
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def create
    @bill = Bill.new(params[:bill])
    @bill.save
    respond_with(@bill)
  end

  def update
    @bill = Bill.find(params[:id])
    @bill.update_attributes(params[:bill])
    respond_with(@bill)
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    respond_with(@bill)
  end
end
