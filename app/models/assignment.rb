# frozen_string_literal: true

class Assignment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :role
end
