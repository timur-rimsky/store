require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :title => "Title",
        :string => "String",
        :description => "Description",
        :text => "Text",
        :image => "Image",
        :text => "Text",
        :price => "Price",
        :integer => "Integer"
      ),
      Product.create!(
        :title => "Title",
        :string => "String",
        :description => "Description",
        :text => "Text",
        :image => "Image",
        :text => "Text",
        :price => "Price",
        :integer => "Integer"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Integer".to_s, :count => 2
  end
end
