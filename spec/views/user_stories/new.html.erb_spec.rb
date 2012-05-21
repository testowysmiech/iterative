require 'spec_helper'

describe "user_stories/new" do
  before(:each) do
    assign(:user_story, stub_model(UserStory,
      :number => "MyString",
      :title => "MyString",
      :description => "MyText",
      :criterias => "MyString",
      :estimation => 1,
      :priority => 1
    ).as_new_record)
  end

  it "renders new user_story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_stories_path, :method => "post" do
      assert_select "input#user_story_number", :name => "user_story[number]"
      assert_select "input#user_story_title", :name => "user_story[title]"
      assert_select "textarea#user_story_description", :name => "user_story[description]"
      assert_select "input#user_story_criterias", :name => "user_story[criterias]"
      assert_select "input#user_story_estimation", :name => "user_story[estimation]"
      assert_select "input#user_story_priority", :name => "user_story[priority]"
    end
  end
end
