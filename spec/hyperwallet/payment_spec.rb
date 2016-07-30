require 'spec_helper'

describe Hyperwallet::Payment do

  let!(:api) { Hyperwallet.mock_rest_client = double('RestClient') }
  let!(:payment) { TestData.payment }

  describe ".all" do
    it 'should call the api' do
      expect(api).to receive(:get)
        .with(Hyperwallet.api_url('/payments'), nil, nil)
        .and_return(test_response([payment]))
      Hyperwallet::Payment.all
    end
  end

  describe ".find" do
    it 'should call the api' do
      expect(api).to receive(:get)
        .with(Hyperwallet.api_url('/payments/payment_token_1'), nil, nil)
        .and_return(test_response(payment))
      Hyperwallet::Payment.find('payment_token_1')
    end
  end

  describe ".create" do
    it "should call the api" do
      expect(api).to receive(:post)
        .with(Hyperwallet.api_url('/payments'), nil, MultiJson.dump(payment))
        .and_return(test_response(payment))
      Hyperwallet::Payment.create(payment)
    end
  end

end
