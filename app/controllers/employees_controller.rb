class EmployeesController < ApplicationController

  def new
    @employee = current_user.employee.new
    authorize @employee
  end

  def create
    @employee = current_user.employee.new(employee_params)
    # @employee.department = @employee.department.strip
    authorize @employee
    if @employee.save
      flash[:notice] = 'A new employee has been added to your company successfully!'
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again!'
      redirect_to new_employee_path(@employee)
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :department)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

end
