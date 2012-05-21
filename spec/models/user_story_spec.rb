require 'spec_helper'

describe UserStory do
  before(:each) do
    @story = UserStory.new(
      :title => "Title",
      :description => "Desc",
      :criterias => ["It's testable"]
    )
  end
  it "is valid with valid attributes" do
    @story.should be_valid
  end
  it "is not valid without a title" do
    @story.title = nil
    @story.should_not be_valid
  end
  it "is not valid without description" do
    @story.description = nil
    @story.should_not be_valid
  end
  it "is not valid without acceptance criterias" do
    @story.criterias = nil
    @story.should_not be_valid
  end
  describe :criterias do
    it "should return an array of acceptance criterias" do
      @story.criterias.should == ["It's testable"]
    end

  end

end
