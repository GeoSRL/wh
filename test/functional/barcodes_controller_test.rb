require 'test_helper'

class BarcodesControllerTest < ActionController::TestCase
  setup do
    @barcode = barcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barcode" do
    assert_difference('Barcode.count') do
      post :create, barcode: { amount: @barcode.amount, mats_id: @barcode.mats_id, product_id: @barcode.product_id, type: @barcode.type }
    end

    assert_redirected_to barcode_path(assigns(:barcode))
  end

  test "should show barcode" do
    get :show, id: @barcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barcode
    assert_response :success
  end

  test "should update barcode" do
    put :update, id: @barcode, barcode: { amount: @barcode.amount, mats_id: @barcode.mats_id, product_id: @barcode.product_id, type: @barcode.type }
    assert_redirected_to barcode_path(assigns(:barcode))
  end

  test "should destroy barcode" do
    assert_difference('Barcode.count', -1) do
      delete :destroy, id: @barcode
    end

    assert_redirected_to barcodes_path
  end
end
