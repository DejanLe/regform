require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url
    assert_response :success
  end

  test "should get new" do
    get new_request_url
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { ap_hmfp: @request.ap_hmfp, apg: @request.apg, change_privileges: @request.change_privileges, change_privileges: @request.change_privileges, client_id: @request.client_id, date_of_request: @request.date_of_request, disable_account: @request.disable_account, hmfp: @request.hmfp, mc: @request.mc, mc_corporate: @request.mc_corporate, new_account: @request.new_account, other: @request.other, re_enable_account: @request.re_enable_account, specify: @request.specify } }
    end

    assert_redirected_to request_url(Request.last)
  end

  test "should show request" do
    get request_url(@request)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_url(@request)
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { ap_hmfp: @request.ap_hmfp, apg: @request.apg, change_privileges: @request.change_privileges, change_privileges: @request.change_privileges, client_id: @request.client_id, date_of_request: @request.date_of_request, disable_account: @request.disable_account, hmfp: @request.hmfp, mc: @request.mc, mc_corporate: @request.mc_corporate, new_account: @request.new_account, other: @request.other, re_enable_account: @request.re_enable_account, specify: @request.specify } }
    assert_redirected_to request_url(@request)
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request)
    end

    assert_redirected_to requests_url
  end
end
