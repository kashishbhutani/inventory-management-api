# frozen_string_literal: true

# app/services/employee_creator_service.rb
class EmployeeCreatorService < ApplicationService
  def initialize(params)
    @name = params[:name]
    @email = params[:email]
  end

  def call
    create_employee
  end

  private

  def create_employee
    Employee.create!(name: @name, email: @email)
  end
end
