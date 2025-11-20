require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", company_n_path
    assert_select "a[href=?]", company_path
    assert_select "a[href=?]", todo_path
    assert_select "a[href=?]", todo_n_path
  end
end
