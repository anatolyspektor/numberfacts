require 'rails_helper'

RSpec.describe NumbersController do

  describe "GET index" do

    before do
      get :index
    end

    it { expect(response).to have_http_status(:success) }
  end

  describe "GET funny_fact" do

    before do
      # Using Webmock here, probably if more of those appear moving them to /support would make sense
      # but leaving it here for now
      stub_request(:get, "http://numbersapi.com/3").
          to_return(status: 200, body: "Hello Hello", headers: {})
    end


    context 'when number is valid' do
      before do
        get :funny_fact, params: {number: 3}
      end

      it { expect(response).to have_http_status(:success) }
    end

    context 'when number is invalid' do

      before do
        get :funny_fact, params: {number: 'testing'}
      end

      it { expect(response).to have_http_status(:success) }
    end

  end
end