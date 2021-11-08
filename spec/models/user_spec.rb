require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) {create(:user)}
    let(:user2) {create(:user)}

    it 'is valid with valid attributes' do
        expect(user).to be_valid
    end

    it 'is not valid without email ' do
        user.email = nil
        expect(user).not_to be_valid
    end


    it 'is not valid without username ' do
        user.username = nil
        expect(user).not_to be_valid
    end

    it 'is not valid with repeat username ' do
        user.username = user2.username
        expect(user).not_to be_valid
    end

    it 'is not valid with repeat email ' do
        user.email = user2.email
        expect(user).not_to be_valid
    end

    it 'is not valid with 1 digit password ' do
        user.password = "1"
        expect(user).not_to be_valid
    end

    it 'is not valid with 2 digit password ' do
        user.password = "11"
        expect(user).not_to be_valid
    end

    it 'is not valid with 3 digit password ' do
        user.password = "111"
        expect(user).not_to be_valid
    end

    it 'is not valid with 4 digit password ' do
        user.password = "111"
        expect(user).not_to be_valid
    end

    it 'is not valid with 5 digit password ' do
        user.password = "111"
        expect(user).not_to be_valid
    end

    it 'is valid with fake age ' do
        user.age = 42069
        expect(user).to be_valid
    end

    it 'is valid with negative age ' do
        user.age = -42069
        expect(user).to be_valid
    end

    
end