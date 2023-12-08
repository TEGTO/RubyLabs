require 'rspec'
# concert.rb
require_relative 'concert'

RSpec.describe ConcertManager do
  let(:concert_manager) { ConcertManager.new }
  describe "#add_concert" do
    it "adds a concert to the concerts list" do
      concert = ConcertEvent.new("Test Concert", "2023-12-25", "Test Genre", "Test Venue", 75)
      concert_manager.add_concert(concert)
      expect(concert_manager.concerts).to include(concert)
    end
  end
  describe "#search_by_genre" do
    it "returns concerts of the specified genre" do
      rock_concert = ConcertEvent.new("Rock Concert", "2023-12-10", "Rock", "Venue A", 50)
      pop_concert = ConcertEvent.new("Pop Concert", "2023-12-15", "Pop", "Venue B", 40)
      concert_manager.add_concert(rock_concert)
      concert_manager.add_concert(pop_concert)
      expect(concert_manager.search_by_genre("Rock")).to eq([rock_concert])
    end
    it "returns an empty array if no concerts match the specified genre" do
      expect(concert_manager.search_by_genre("Unknown Genre")).to eq([])
    end
  end
  describe "#search_by_venue" do
    it "returns concerts at the specified venue" do
      venue_a_concert = ConcertEvent.new("Concert A", "2023-12-10", "Rock", "Venue A", 50)
      venue_b_concert = ConcertEvent.new("Concert B", "2023-12-15", "Pop", "Venue B", 40)
      concert_manager.add_concert(venue_a_concert)
      concert_manager.add_concert(venue_b_concert)
      expect(concert_manager.search_by_venue("Venue A")).to eq([venue_a_concert])
    end
    it "returns an empty array if no concerts match the specified venue" do
      expect(concert_manager.search_by_venue("Unknown Venue")).to eq([])
    end
  end
  describe "#sort_by_cost" do
    it "sorts concerts by cost in ascending order" do
      concert1 = ConcertEvent.new("Concert 1", "2023-12-10", "Rock", "Venue A", 50)
      concert2 = ConcertEvent.new("Concert 2", "2023-12-15", "Pop", "Venue B", 40)
      concert_manager.add_concert(concert1)
      concert_manager.add_concert(concert2)
      sorted_concerts = concert_manager.sort_by_cost
      expect(sorted_concerts).to eq([concert2, concert1])
    end
  end
  describe "#sort_by_name" do
    it "sorts concerts by name" do
      concert1 = ConcertEvent.new("Concert 1", "2023-12-10", "Rock", "Venue A", 50)
      concert2 = ConcertEvent.new("Concert 2", "2023-12-15", "Pop", "Venue B", 40)
      concert_manager.add_concert(concert1)
      concert_manager.add_concert(concert2)
      sorted_concerts = concert_manager.sort_by_name
      expect(sorted_concerts).to eq([concert1, concert2])
    end
  end
end
