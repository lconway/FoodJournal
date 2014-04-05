require 'spec_helper'

describe "foods/show" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :name => "Name",
      :serving_size => "9.99",
      :serv_per_container => "9.99",
      :calories => 1,
      :fat => "9.99",
      :sodium => "9.99",
      :carbs => "9.99",
      :sugar => "9.99",
      :protein => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
