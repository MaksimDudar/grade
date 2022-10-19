require "test_helper"

class MastercarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mastercar = mastercars(:one)
  end

  test "should get index" do
    get mastercars_url
    assert_response :success
  end

  test "should get new" do
    get new_mastercar_url
    assert_response :success
  end

  test "should create mastercar" do
    assert_difference("Mastercar.count") do
      post mastercars_url, params: { mastercar: { driver: @mastercar.driver, manager: @mastercar.manager, rating: @mastercar.rating, strana: @mastercar.strana, strana1: @mastercar.strana1, truck: @mastercar.truck } }
    end

    assert_redirected_to mastercar_url(Mastercar.last)
  end

  test "should show mastercar" do
    get mastercar_url(@mastercar)
    assert_response :success
  end

  test "should get edit" do
    get edit_mastercar_url(@mastercar)
    assert_response :success
  end

  test "should update mastercar" do
    patch mastercar_url(@mastercar), params: { mastercar: { driver: @mastercar.driver, manager: @mastercar.manager, rating: @mastercar.rating, strana: @mastercar.strana, strana1: @mastercar.strana1, truck: @mastercar.truck } }
    assert_redirected_to mastercar_url(@mastercar)
  end

  test "should destroy mastercar" do
    assert_difference("Mastercar.count", -1) do
      delete mastercar_url(@mastercar)
    end

    assert_redirected_to mastercars_url
  end
end
