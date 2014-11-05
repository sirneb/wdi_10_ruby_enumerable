require './spec/spec_helper.rb'
require_relative '../lib/enum'

RSpec.describe 'array methods' do
  before(:each) do
    test_array = [1, 2, 3, 7, 10, 'foobar', false, 'Boston', 'New York', 'General Assembly', 17]
    @array_lab = ArrayLab.new(test_array)
  end

  describe '#sum_of_numeric_elements' do
    it 'sums all Float and Fixnum elements' do
      expect(@array_lab.sum_of_numeric_elements).to be 40
    end
  end

  # describe '#prompt_input' do
  #   it 'does something' do
  #     game = Game.new
  #     # game.stub(:gets).with('go north') # {'go north'}
  #     allow(Kernel).to receive(:gets)
  #     expect(game.one_command).to eq("It is just another day, then.")
  #   end
  # end

end
