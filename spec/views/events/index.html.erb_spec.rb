require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :details => "MyText",
        :time_interval => 1
      ),
      Event.create!(
        :details => "MyText",
        :time_interval => 1
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
