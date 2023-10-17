JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1