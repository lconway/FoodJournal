require 'spec_helper'

describe "foods/index" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :name => "Name",
        :serving_size => "9.99",
        :serv_per_container => "9.99",
        :calories => 1,
        :fat => "9.99",
        :sodium => "9.99",
        :carbs => "9.99",
        :sugar => "9.99",
        :protein => "9.99"
      ),
      stub_model(Food,
        :name => "Name",
        :serving_size => "9.99",
        :serv_per_container => "9.99",
        :calories => 1,
        :fat => "9.99",
        :sodium => "9.99",
        :carbs => "9.99",
        :sugar => "9.99",
        :protein => "9.99"
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
