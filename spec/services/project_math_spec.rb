require 'rails_helper'

RSpec.describe 'ProjectMath' do
  let(:pm) { ProjectMath.new }

  describe '.add' do
    it 'finds the sum of two numbers' do
      expect(pm.add(1, 1)).to eql(2)
    end
  end

  describe '.subtract' do
    it 'finds the difference between two numbers' do
      expect(pm.subtract(2,1)).to eql(1)
    end
  end

  describe '.multiply' do
    it 'finds the value of two numbers multiplied together' do
      expect(pm.multiply(2,2)).to eql(4)
    end
  end

  describe '.divide' do
    it 'finds the value of a value divided by another value' do
      expect(pm.divide(2,2)).to eql(1)
    end
  end

  describe '.cool_math' do
    it 'returns -1 when 0 is passed' do
      expect(pm.cool_math(0)).to eql(-1)
    end

    it 'returns 5 when the number is larger than 5' do
      expect(pm.cool_math(6)).to eql(5)
    end

    it 'returns 2 when the number is less than or equal to 5' do
      expect(pm.cool_math(3)).to eql(2)
    end
  end
end
