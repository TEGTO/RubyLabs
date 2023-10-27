require 'rspec'
require_relative 'task1' 

RSpec.describe Apartment do
  before do
    @apartments = [
      Apartment.new(1, 10, 50, 2, 2, 'Street A', 'Concrete', 10),
      Apartment.new(2, 20, 70, 4, 3, 'Street B', 'Brick', 20),
      Apartment.new(3, 30, 65, 3, 2, 'Street A', 'Brick', 5),
      Apartment.new(4, 40, 90, 5, 4, 'Street C', 'Wood', 15)
    ]
  end
  before do
    @apartment = Apartment.new(1, 24, 70.5, 3, 2, 'Main Street', 'Brick', 15)
  end
  it 'initializes with correct attributes' do
    expect(@apartment.id).to eq(1)
    expect(@apartment.apartment_number).to eq(24)
    expect(@apartment.area).to eq(70.5)
    expect(@apartment.floor).to eq(3)
    expect(@apartment.number_of_rooms).to eq(2)
    expect(@apartment.street).to eq('Main Street')
    expect(@apartment.building_type).to eq('Brick')
    expect(@apartment.operation_period).to eq(15)
  end

  describe "#apartments_with_rooms" do
    it 'returns apartments with a given number of rooms' do
      result = apartments_with_rooms(@apartments, 2)
      expect(result.length).to eq(2)
      expect(result.map(&:apartment_number)).to contain_exactly(10, 30)
    end
  end

  describe "#apartments_with_rooms_and_floor_range" do
    it 'returns apartments with a given number of rooms and located on a floor within a given range' do
      result = apartments_with_rooms_and_floor_range(@apartments, 2, 2..4)
      expect(result.length).to eq(2)
      expect(result.map(&:apartment_number)).to contain_exactly(10, 30)
    end
  end

  describe "#apartments_exceeding_area" do
    it 'returns apartments with an area exceeding the given one' do
      result = apartments_exceeding_area(@apartments, 60)
      expect(result.length).to eq(3)
      expect(result.map(&:apartment_number)).to contain_exactly(20, 30, 40)
    end
  end
end
