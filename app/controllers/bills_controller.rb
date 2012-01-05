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
      redirect_to about_path
    else 
      render new
    end
  end
end
