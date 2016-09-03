require 'test_helper'

class JokesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joke = jokes(:one)
  end

  test "should get index" do
    get jokes_url, as: :json
    assert_response :success
  end

  test "should create joke" do
    assert_difference('Joke.count') do
      post jokes_url, params: { joke: { body: @joke.body } }, as: :json
    end

    assert_response 201
  end

  test "should show joke" do
    get joke_url(@joke), as: :json
    assert_response :success
  end

  test "should update joke" do
    patch joke_url(@joke), params: { joke: { body: @joke.body } }, as: :json
    assert_response 200
  end

  test "should destroy joke" do
    assert_difference('Joke.count', -1) do
      delete joke_url(@joke), as: :json
    end

    assert_response 204
  end
end
