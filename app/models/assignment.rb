# frozen_string_literal: true

# Assignment Model
class Assignment < ApplicationRecord
  # Associations
  belongs_to :employee
  belongs_to :role
end
