require 'rails_helper'

RSpec.describe Slot, type: :model do
  let(:slot_1) do
    Slot.new( start_time: '12PM', end_time: '03PM')
  end

  let(:slot_2) do
    Slot.new(start_time: '03PM', end_time: '06PM')
  end

  let(:slot_3) do
    Slot.new( start_time: '06PM', end_time: '09PM')
  end

  let(:slot_4) do
    Slot.new(start_time: '09PM', end_time: '12AM')
  end

  it 'is valid with valid attributes' do
    expect(slot_1).to be_valid
  end

  it 'is not valid without start_time' do
    expect(Slot.new(start_time: nil)).to_not be_valid
  end

  it 'is not valid without end_time' do
    expect(Slot.new(end_time: nil)).to_not be_valid
  end
end
