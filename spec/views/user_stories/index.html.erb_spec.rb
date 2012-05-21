require 'spec_helper'

describe "user_stories/index" do
  before(:each) do
    assign(:user_stories, [
      stub_model(UserStory,
        :number => "Number",
        :title => "Title",
        :description => "MyText",
        :criterias => "Criterias",
        :estimation => 1,
        :priority => 2
      ),
      stub_model(UserStory,
        :number => "Number",
        :title => "Title",
        :description => "MyText",
        :criterias => "Criterias",
        :estimation => 1,
        :priority => 2
      )
    ])
  end

  it "renders a list of user_stories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Criterias".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
