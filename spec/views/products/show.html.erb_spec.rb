require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :title => "Title",
      :string => "String",
      :description => "Description",
      :text => "Text",
      :image => "Image",
      :text => "Text",
      :price => "Price",
      :integer => "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Integer/)
  end
end
