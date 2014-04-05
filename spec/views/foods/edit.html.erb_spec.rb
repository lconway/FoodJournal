require 'spec_helper'

describe "foods/edit" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :name => "MyString",
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

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_path(@food), "post" do
      assert_select "input#food_name[name=?]", "food[name]"
      assert_select "input#food_serving_size[name=?]", "food[serving_size]"
      assert_select "input#food_serv_per_container[name=?]", "food[serv_per_container]"
      assert_select "input#food_calories[name=?]", "food[calories]"
      assert_select "input#food_fat[name=?]", "food[fat]"
      assert_select "input#food_sodium[name=?]", "food[sodium]"
      assert_select "input#food_carbs[name=?]", "food[carbs]"
      assert_select "input#food_sugar[name=?]", "food[sugar]"
      assert_select "input#food_protein[name=?]", "food[protein]"
    end
  end
end
