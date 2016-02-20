require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :user => nil,
      :destination => nil,
      :price => 1,
      :quantity => 1
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_user_id[name=?]", "ticket[user_id]"

      assert_select "input#ticket_destination_id[name=?]", "ticket[destination_id]"

      assert_select "input#ticket_price[name=?]", "ticket[price]"

      assert_select "input#ticket_quantity[name=?]", "ticket[quantity]"
    end
  end
end
