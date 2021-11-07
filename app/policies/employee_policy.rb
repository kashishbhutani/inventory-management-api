class EmployeePolicy
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def index?
    user.role? :it_admin
  end
end
