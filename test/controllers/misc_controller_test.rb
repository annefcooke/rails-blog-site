require 'test_helper'

class MiscControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get misc_about_url
    assert_response :success
  end

  test "should get contact" do
    get misc_contact_url
    assert_response :success
  end

  test "should get faq" do
    get misc_faq_url
    assert_response :success
  end

  test "should get terms" do
    get misc_terms_url
    assert_response :success
  end

  test "should get index" do
    get misc_index_url
    assert_response :success
  end

end
