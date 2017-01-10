require_relative '../rails_helper'

describe User do
  let(:user) { User.new(name: "McTesty", username: "Captain Test", email: "test@babyrater.gov", password: "1234", password_confirmation: "1234") }
  it 'is able to create a new user account' do
    expect(user).to be_valid
  end
end
