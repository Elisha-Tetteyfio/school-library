require 'spec_helper'

describe Classroom do
  before :each do
    @class = Classroom.new 'Maths'
  end

  it 'Should be a classroom object' do
    expect(@class).to be_an_instance_of(Classroom)
  end
end
