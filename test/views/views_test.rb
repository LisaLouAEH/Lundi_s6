require 'test_helper'
class UserTest < ActiveSupport::TestCase
    def setup
        @user = User.new(first_name: "Example", last_name: "User", email: "user@example.com")
      end
    
end