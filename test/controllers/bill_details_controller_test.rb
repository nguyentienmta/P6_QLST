require 'test_helper'

class BillDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_detail = bill_details(:one)
  end

  test "should get index" do
    get bill_details_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_detail_url
    assert_response :success
  end

  test "should create bill_detail" do
    assert_difference('BillDetail.count') do
      post bill_details_url, params: { bill_detail: { amount: @bill_detail.amount, bill_id: @bill_detail.bill_id, price: @bill_detail.price, product_id: @bill_detail.product_id, sale: @bill_detail.sale, total: @bill_detail.total } }
    end

    assert_redirected_to bill_detail_url(BillDetail.last)
  end

  test "should show bill_detail" do
    get bill_detail_url(@bill_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_detail_url(@bill_detail)
    assert_response :success
  end

  test "should update bill_detail" do
    patch bill_detail_url(@bill_detail), params: { bill_detail: { amount: @bill_detail.amount, bill_id: @bill_detail.bill_id, price: @bill_detail.price, product_id: @bill_detail.product_id, sale: @bill_detail.sale, total: @bill_detail.total } }
    assert_redirected_to bill_detail_url(@bill_detail)
  end

  test "should destroy bill_detail" do
    assert_difference('BillDetail.count', -1) do
      delete bill_detail_url(@bill_detail)
    end

    assert_redirected_to bill_details_url
  end
end
