# frozen_string_literal: true

# User Model
class User < ApplicationRecord
  # Associations
  has_many :assignments
  has_many :roles, through: :assignments

  # Public Instance Methods
  def role?(role)
    byebug
    roles.any? { |r| r.name.underscore.to_sym == role }
  end
end
