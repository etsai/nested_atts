require 'spec_helper'

describe Survey do  

  it { should validate_presence_of :title }
  it { should have_many :questions }
  it { should validate_uniqueness_of :title }
  it { should accept_nested_attributes_for :questions }

let(:survey) { Survey.create(title: "Hello") }

  it "should change the title" do
    survey.title = "Goodbye"
    expect(survey.title).to eq "Goodbye"
  end

end
