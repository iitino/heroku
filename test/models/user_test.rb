require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "user@example.com", user_name: "Example User",
                     encrypted_password: "1234")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
