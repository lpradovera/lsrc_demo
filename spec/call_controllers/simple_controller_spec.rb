require 'spec_helper'

describe SimpleController do
  let(:mock_call) { mock 'Call' }
 
  subject do
    SimpleController.new mock_call
  end

  before { flexmock subject }

  it "should answer" do
    subject.should_receive(:answer).once
  end

end
