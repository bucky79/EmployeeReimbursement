class DashboardController < ApplicationController
    def index
      redirect_to root_path and return unless session[:email].present?

      if session[:role_type]&.downcase == 'admin'
        @bills = Bill.all
        @totals = @bills.group(:status).sum(:amount)
        render :admin_dashboard and return
      end
      @bills = Bill.where(user_id: session[:employee_id])
      @totals = @bills.group(:status).sum(:amount)
    end

    def approve
      return unless params[:id].present?

      bill = Bill.find_by(id: params[:id])
      if bill
        bill.update(status: 'Approved')
      end
      redirect_to '/dashboard'
    end

    def reject
      return unless params[:id].present?

      bill = Bill.find_by(id: params[:id])
      if bill
        bill.update(status: 'Rejected')
      end
      redirect_to '/dashboard'
    end
end
