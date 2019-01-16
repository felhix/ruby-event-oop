require_relative '../lib/user'

describe User do

  before(:each) do
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end

	describe 'initializer' do
		it 'creates an user' do
			# créé un utilisateur
      user = User.new("email@email.com")

      # petit test si l'utilisateur est bien créé
      expect(user.class).to eq(User)
		end
	end

end