# frozen_string_literal: true

# app/services/employee_list_service.rb
class EmployeeListService < ApplicationService
  def call
    show_all_employees
  end

  private

  def show_all_employees
    Employee.all
  end
end
