require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit a artist index page' do
    it "Show all artist name" do
      talking_heads = Artist.create!(name: 'Talking Heads')
      she_was = talking_heads.songs.create(title: 'And She Was', length: 234, play_count: 2994 )
      wild_life = talking_heads.songs.create(title: 'Wild Wild Life', length: 456, play_count: 384889 )

      visit "/artists"

      expect(page).to have_content("Artists")
    end
  end
end
