require 'rails_helper'

RSpec.describe NumbersController do

  describe '.valid?' do

    context 'when valid number is passed' do
      it 'should return true' do
        expect(Number.new(3).valid?).to eq(true)
      end
    end

    context 'when invalid number is passed' do
      it 'should return false' do
        expect(Number.new('blah').valid?).to eq(false)
      end

    end
  end

end