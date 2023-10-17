require 'rails_helper'

RSpec.describe "Utndrs", type: :request do
  describe "GET /index" do
    it "gets a list of utndr's" do
      Utndr.create(
        name: 'Paularts',
        age: 26,
        content: 'Arts & Crafts',
        image: 'https://unsplash.com/photos/ia1p6fqftnQ')
        get'/utndrs'
        utndr = JSON.parse(response.body)
        expect(response).to have_http_status(200)
        expect(utndr.length).to eq 1
      
      end
  end

  describe "POST /create" do
    it "creates a utndr" do
      utndr_params = {
        utndr: {
          name: 'Paularts',
        age: 26,
        content: 'Arts & Crafts',
        image: 'https://unsplash.com/photos/ia1p6fqftnQ'
        }
      }

      post '/utndrs', params: utndr_params

      expect(response).to have_http_status(200)

      utndr = Utndr.first

      expect(utndr.name).to eq 'Paularts'
    end
  end
end
