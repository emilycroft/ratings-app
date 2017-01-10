require_relative '../rails_helper'

describe User do
  let(:user) { User.new(name: "McTesty", username: "Captain Test", email: "test@babyrater.gov", password: "1234", password_confirmation: "1234") }
  let(:invalid_user) { User.create }

  it 'is able to create a new user account' do
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    invalid_user.valid?
    expect(invalid_user.errors.full_messages).to include("Name can't be blank")
  end

  it 'is invalid without a username' do
    invalid_user.valid?
    expect(invalid_user.errors.full_messages).to include("Username can't be blank")
  end

  it 'is invalid without a email' do
    invalid_user.valid?
    expect(invalid_user.errors.full_messages).to include("Email can't be blank")
  end

  it 'is invalid without a password' do
    invalid_user.valid?
    expect(invalid_user.errors.full_messages).to include("Password digest can't be blank")
  end

end
