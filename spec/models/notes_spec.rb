require 'rails_helper'

RSpec.describe Note, type: :model do
  context "create" do
    it "creates a note" do
      note = Note.create! content: 'Hello I am a note!', user:

    end
  end
end