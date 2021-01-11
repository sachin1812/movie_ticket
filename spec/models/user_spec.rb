describe User do

  before(:each) { @user = User.new(email: 'user456@test.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user456@test.com'
  end

end
