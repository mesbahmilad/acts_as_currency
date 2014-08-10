require 'spec_helper'

describe "Bill" do
  it "should assign :paid as the currency field" do
    bill = Bill.new
    expect(Bill.currency_options[:fields]).to eq([:paid,:outstanding])
  end

  it "returns paid to dollar value" do
    bill = Bill.new(:paid => 12.45)
    expect(bill.paid).to eq(12.45)
  end

  it "returns outstanding to dollar value" do
    bill = Bill.new(:outstanding => 12.45,:paid => 100)
    expect(bill.outstanding).to eq(12.45)
    expect(bill.paid).to eq(100.00)
  end

  it "Saves decimal dollar value in integer format" do
    bill = Bill.new(:outstanding => 12.45)
    expect(bill.outstanding).to eq(12.45)
  end
end
