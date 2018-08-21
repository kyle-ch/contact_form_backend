require 'test_helper'

class MailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail = mails(:one)
  end

  test "should get index" do
    get mails_url, as: :json
    assert_response :success
  end

  test "should create mail" do
    assert_difference('Mail.count') do
      post mails_url, params: { mail: { body: @mail.body, email: @mail.email, name: @mail.name, time: @mail.time } }, as: :json
    end

    assert_response 201
  end

  test "should show mail" do
    get mail_url(@mail), as: :json
    assert_response :success
  end

  test "should update mail" do
    patch mail_url(@mail), params: { mail: { body: @mail.body, email: @mail.email, name: @mail.name, time: @mail.time } }, as: :json
    assert_response 200
  end

  test "should destroy mail" do
    assert_difference('Mail.count', -1) do
      delete mail_url(@mail), as: :json
    end

    assert_response 204
  end
end
