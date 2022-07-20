require 'rails_helper'


describe 'Books API', type: :request do
  it 'returns all books' do
    # create two book record in test database
    FactoryBot.create(:book, title: "1984", auther: "George Orwell")
    FactoryBot.create(:book, title: "The Time Machine", auther: "M.G Wells")
    get '/api/v1/books'

    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end
