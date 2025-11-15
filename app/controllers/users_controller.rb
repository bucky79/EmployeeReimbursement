class UsersController < ApplicationController

    before_action :authenticate_admin!

    def index        
        @users = User.all.where(active: 1).where.not(role_type: 'Admin')
    end

    def create
            @employee = Employee.new
            @employee.first_name = params[:first_name]
            @employee.last_name = params[:last_name]
            @employee.email = params[:email]
            @employee.designation = params[:designation]
            @employee.department_id = params[:department]
            if @employee.save
                @user = User.new
                @user.name = "#{params[:first_name]} #{params[:last_name]}"
                @user.email = params[:email]
                @user.password = "#{params[:first_name]}#{params[:last_name]}@123"
                @user.role_type = 'employee'
                @user.active = true
                @user.employee_id = @employee.id
                if @user.save
                  redirect_to '/users', notice: 'User created successfully'
                else
                  redirect_to '/users', alert: @user.errors.full_messages
                end
            else
                @user.destroy
                redirect_to '/users', alert: @employee.errors.full_messages
            end
    end

    def new
        @departments = Department.all
    end

    def show        
        @departments = Department.all
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user
            @user.employee.update(user_params)
            @user.update(email: params[:email])
            redirect_to user_path(@user), notice: 'User updated successfully'
        else
            render :show
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user
            @user.update(active: false)
            redirect_to '/users', notice: 'User updated successfully'
        else
            render :show
        end
    end

   private

    def user_params
    hash = { first_name: params[:first_name], email: params[:email], last_name: params[:last_name],
        designation: params[:designation], department_id: params[:department]}
    end

    def authenticate_admin!
        redirect_to root_path and return unless session[:role_type]&.downcase == 'admin'
    end
end
