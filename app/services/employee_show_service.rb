# frozen_string_literal: true

# app/services/employee_show_service.rb
class EmployeeShowService < ApplicationService
  def initialize(id)
    @id = id
  end

  def call
    show_employee
  end

  private

  def show_employee
    Employee.find(@id)
  end
end
