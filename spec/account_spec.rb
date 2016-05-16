require 'account'

describe Account do
  subject(:account) { described_class.new }

  it "should start with a balance of 0" do
    expect(account.balance).to eq 0
  end

  it "should start with 0 transactions" do
    expect(account.transactions).to eq []
  end

  it "can be altered with deposits" do
    account = Account.new
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

end
