require 'spec_helper'

describe Foo do
  subject { Foo.create :datetime_test => Time.now }
  let(:date_time) { DateTime.now }
  it 'should accepts the write of new time different from the old value by microseconds' do
    subject.datetime_test = date_time 
    subject.save!
    subject.datetime_test.should == date_time 
  end
end
