require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }
  let!(:favorite) { FactoryBot.create(:favorite, plant_id: 17 ) }
  context 'CREATE' do
    it 'Creates a new note' do
      
      post :create, :params => { note: {  } }
      parsed_response = JSON.parse(response.body)
    end
  end
end