require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }
  let!(:favorite) { FactoryBot.create(:favorite, plant_id: 17 ) }
  context "GET index" do
    it 'returns index' do
      puts user.inspect
      puts favorite.inspect
    end
  end
end