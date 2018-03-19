require 'test_helper'

class ClassNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_news = class_news(:one)
  end

  test "should get index" do
    get class_news_index_url
    assert_response :success
  end

  test "should get new" do
    get new_class_news_url
    assert_response :success
  end

  test "should create class_news" do
    assert_difference('ClassNews.count') do
      post class_news_index_url, params: { class_news: { body: @class_news.body, drop: @class_news.drop, title: @class_news.title } }
    end

    assert_redirected_to class_news_url(ClassNews.last)
  end

  test "should show class_news" do
    get class_news_url(@class_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_news_url(@class_news)
    assert_response :success
  end

  test "should update class_news" do
    patch class_news_url(@class_news), params: { class_news: { body: @class_news.body, drop: @class_news.drop, title: @class_news.title } }
    assert_redirected_to class_news_url(@class_news)
  end

  test "should destroy class_news" do
    assert_difference('ClassNews.count', -1) do
      delete class_news_url(@class_news)
    end

    assert_redirected_to class_news_index_url
  end
end
