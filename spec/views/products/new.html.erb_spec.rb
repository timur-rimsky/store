require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :string => "MyString",
      :description => "MyString",
      :text => "MyString",
      :image => "MyString",
      :text => "MyString",
      :price => "MyString",
      :integer => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[title]"

      assert_select "input[name=?]", "product[string]"

      assert_select "input[name=?]", "product[description]"

      assert_select "input[name=?]", "product[text]"

      assert_select "input[name=?]", "product[image]"

      assert_select "input[name=?]", "product[text]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[integer]"
    end
  end
end
