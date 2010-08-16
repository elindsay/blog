require 'spec_helper'

describe Article do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should have_many :comments }

  subject = Factory(:article, :title => "Kittens with mittens")

  it "should return invalid" do
    subject.title = nil
    subject.should_not be_valid
  end

  it "shold return title as to_s" do
    #so it's not still nil from prior test
    subject.reload
    subject.to_s.should == "Kittens with mittens"
  end
end
