# frozen_string_literal: true

# app/services/role_assignment_service.rb
class RoleAssignmentService < ApplicationService
  def initialize(employee, role_name)
    @employee = employee
    @role_name = role_name
  end

  def call
    find_role
    assign_role
  end

  private

  def assign_role
    @employee.assignments.build(role_id: @role&.id).save!
  end

  def find_role
    @role = Role.find_by_name(@role_name)
  end
end
