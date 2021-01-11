require 'rails_helper'

RSpec.describe Movie, type: :model do
  let (:movie_1) do
    Movie.new(title: 'Test Movie-1', duration: "1h 15m")
  end

  let (:movie_2) do
    Movie.new(title: 'Test Movie-2', duration: "2h 15m")
  end

  it 'is valid with valid attributes' do
    expect(movie_1).to be_valid
  end

  it 'is not valid without name' do
    expect(Movie.new(title: nil, duration: "2h 15m")).to_not be_valid
  end

  it 'is not valid without director name' do
    expect(Movie.new(title: 'Test',  duration: nil)).to_not be_valid
  end
  
end
