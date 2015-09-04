require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup 
    $titel = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{$titel}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | "+ "#{$titel}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | "+ "#{$titel}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | "+ "#{$titel}"
  end
end
