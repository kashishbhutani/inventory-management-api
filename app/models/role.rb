# frozen_string_literal: true

class Role < ApplicationRecord
  # Associations
  has_many :assignments
  has_many :employees, through: :assignments

  # Validations
  validates :name, presence: true, uniqueness: true
end
