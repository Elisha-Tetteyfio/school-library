require 'spec_helper'

describe "Testing 'Teacher' object " do
  before :each do
    @teacher = Teacher.new(25, "Maths")
  end

  it "Should be a person object" do
    expect(@teacher).to be_kind_of(Person)
  end

  it "Should set the name to 'Unknown'" do
    expect(@teacher.name).to eq("Unknown")
  end

  it "Should have the specialization to be 'Maths'" do
    expect(@teacher.specialization).to eq("Maths")
  end

  it "Should be able to use services" do
    expect(@teacher.can_use_services?).to be true
  end

  it "Setting the teacher name to 'Person1'" do
    @teacher.name = "Person1"
    expect(@teacher.name).to eq("Person1")
  end
end
