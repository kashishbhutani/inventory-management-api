# frozen_string_literal: true

class Role < ApplicationRecord
  # Associations
  has_many :assignments
  has_many :users, through: :assignments

  # Validations
  validates :name, presence: true, uniqueness: true
end
