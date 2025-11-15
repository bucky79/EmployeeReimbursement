class BillsController < ApplicationController
    def new_bill
      redirect_to root_path and return unless session[:email].present?

      return unless params[:amount].present? && params[:type].present?
  
      bill = Bill.new
      bill.amount = params[:amount]
      bill.item_type = params[:type]
      bill.status = 'Pending'
      bill.user_id = session[:employee_id]
      if bill.save
        redirect_to '/dashboard'
      else
        return
      end
    end
end
