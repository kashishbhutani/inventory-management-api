# frozen_string_literal: true

# app/services/employee_show_service.rb
class EmployeeDeletionService < ApplicationService
  def initialize(id)
    @id = id
  end

  def call
    delete_employee
  end

  private

  def delete_employee
    Employee.delete(@id)
  end
end
