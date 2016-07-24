require 'test_helper'

class FitpartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fitpartner = fitpartners(:one)
  end

  test "should get index" do
    get fitpartners_url
    assert_response :success
  end

  test "should get new" do
    get new_fitpartner_url
    assert_response :success
  end

  test "should create fitpartner" do
    assert_difference('Fitpartner.count') do
      post fitpartners_url, params: { fitpartner: { address: @fitpartner.address, costo: @fitpartner.costo, descripcion: @fitpartner.descripcion, disponibilidad: @fitpartner.disponibilidad, especialidad: @fitpartner.especialidad, latitude: @fitpartner.latitude, longitude: @fitpartner.longitude, tipo_costo: @fitpartner.tipo_costo } }
    end

    assert_redirected_to fitpartner_url(Fitpartner.last)
  end

  test "should show fitpartner" do
    get fitpartner_url(@fitpartner)
    assert_response :success
  end

  test "should get edit" do
    get edit_fitpartner_url(@fitpartner)
    assert_response :success
  end

  test "should update fitpartner" do
    patch fitpartner_url(@fitpartner), params: { fitpartner: { address: @fitpartner.address, costo: @fitpartner.costo, descripcion: @fitpartner.descripcion, disponibilidad: @fitpartner.disponibilidad, especialidad: @fitpartner.especialidad, latitude: @fitpartner.latitude, longitude: @fitpartner.longitude, tipo_costo: @fitpartner.tipo_costo } }
    assert_redirected_to fitpartner_url(@fitpartner)
  end

  test "should destroy fitpartner" do
    assert_difference('Fitpartner.count', -1) do
      delete fitpartner_url(@fitpartner)
    end

    assert_redirected_to fitpartners_url
  end
end
