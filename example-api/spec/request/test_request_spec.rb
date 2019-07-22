require 'rails_helper'

describe 'API for Test', type: :request do
  include Committee::Rails::Test::Methods
  
  subject { get '/test' }
  it 'test test' do
    subject
    aggregate_failures do
      expect(response.status).to eq(404)
      assert_schema_conform
    end
  end
end