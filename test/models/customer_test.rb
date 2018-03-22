require 'test_helper'

class CustomerTest < ActiveSupport::TestCase

  def setup
     @customer = Customer.new(name: "Example User", email: "user@example.com", phone: "5616030303", address: "123 hello st", plan_id: 2)
   end

   test "should be valid" do
    assert @customer.valid?
  end

  test "name should be present" do
   @customer.name = "     "
   assert_not @customer.valid?
 end

 test "email should be present" do
    @customer.email = "     "
    assert_not @customer.valid?
  end

  test "name should not be too long" do
  @customer.name = "a" * 51
  assert_not @customer.valid?
end

test "email should not be too long" do
  @customer.email = "a" * 244 + "@example.com"
  assert_not @customer.valid?
end

test "email validation should accept valid addresses" do
  valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                       first.last@foo.jp alice+bob@baz.cn]
  valid_addresses.each do |valid_address|
    @customer.email = valid_address
    assert @customer.valid?, "#{valid_address.inspect} should be valid"
  end
end

test "email validation should reject invalid addresses" do
  invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                         foo@bar_baz.com foo@bar+baz.com]
  invalid_addresses.each do |invalid_address|
    @customer.email = invalid_address
    assert_not @customer.valid?, "#{invalid_address.inspect} should be invalid"
  end
end

test "email addresses should be unique" do
   duplicate_customer = @customer.dup
   @customer.save
   assert_not duplicate_customer.valid?
 end

 test "email addresses should be unique" do
  duplicate_customer = @customer.dup
  duplicate_customer.email = @customer.email.upcase
  @customer.save
  assert_not duplicate_customer.valid?
end

end
