class BillsController < ApplicationController
  def new
    @bill = Bill.new
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @bill = current_user.bills.build(params[:bill])
    if @bill.save
      flash[:success] = "bill created!"
      redirect_to root_path
    else 
      render new
    end
  end
  
  def show
    @bill = Bill.find(params[:id])
  end
end
