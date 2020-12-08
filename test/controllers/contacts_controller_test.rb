require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    user = User.create(email: 'a@example.com', password: 'Pa$$w0rd', password_confirmation: 'Pa$$w0rd')
    sign_in(user)
    @contact = Contact.create(first_name: 'A', last_name: 'B', phone: '111-111-1111')
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { first_name: @contact.first_name, last_name: @contact.last_name, phone: @contact.phone } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { first_name: @contact.first_name, last_name: @contact.last_name, phone: @contact.phone } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
