# frozen_string_literal: true

# Employees API
module Api
  module V1
    class EmployeesController < ApplicationController
      # GET api/v1/employees
      def index
        @employees = EmployeeListService.call

        render_data(@employees)
      end

      # GET api/v1/employees/:id
      def show
        employee = EmployeeShowService.call(params[:id])

        render_data(employee)
      end

      # POST api/v1/employees
      def create
        employee = EmployeeCreatorService.call(employee_params)

        RoleAssignmentService.call(employee, params[:role]) if params[:role].present?

        render_data(employee, :created)
      end

      private

      def employee_params
        params.require(:employee).permit(:name, :email)
      end
    end
  end
end
