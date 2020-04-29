class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]
    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def create
        # raise params.inspect
        @employee = Employee.create(employee_params( :first_name, :last_name, :alias, :title, :office, :dog_id))
        # byebug
        redirect_to employee_path(@employee)
    end

    def show
        # @employee = Employee.find(params[:id])
    end

    def edit
        # @employee = Employee.find(params[:id])
    end

    def update
        @employee.update(employee_params( :first_name, :last_name, :alias, :title, :office, :dog_id))
        if @employee.valid?
        redirect_to employee_path(@employee)
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to edit_employee_path
        end
    end

    private 

    def employee_params(*args)
        params.require(:employee).permit(*args)
    end

    def find_employee
        @employee = Employee.find(params[:id])

    end

end

