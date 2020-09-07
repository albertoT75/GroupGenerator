class GroupsController < ApplicationController
  def new
    @group = Group.new
    @employee = Employee.find(params[:employee_id])
    authorize @group
  end

  def create
    @group = Group.new(group_params)

    selection

    authorize @group
    if @group.save
      redirect_to dashboard_path
    else
      redirect_to new_employee_group_path(@employee)
    end
  end

  def selection
    group_counter = 0
    if group_counter = 4
      # then store the employees in there
    else
    # Count how many employee from IT, Tech and Accounting are in the selection,
    # if = 2, then don't include.
    # Groups form of 4 employees
      IT = 0
      Tech = 0
      Accounting = 0
      @employee = Employee.find(params[:employee_id])
      @department = @employee.department
      @employee_name = @employee.employee_name
      if @department = "IT" & group_counter < 4
        IT =+ 1
      elsif @department = "Tech" & group_counter < 4
        Tech =+ 1
      else @department = "Accounting" & group_counter < 4
        Accounting =+ 1
      end
    end
  end








end
