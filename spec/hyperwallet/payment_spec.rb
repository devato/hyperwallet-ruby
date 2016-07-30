require 'spec_helper'

describe Hyperwallet::Payment do

  let!(:api) { Hyperwallet.mock_rest_client = double('RestClient') }
  let!(:payment) { TestData.payment }

  describe ".create" do
    it "should call the api" do
      expect(api).to receive(:post)
        .with(Hyperwallet.api_url('/payments'), nil, payment.to_s)
        .and_return(test_response(payment))
      Hyperwallet::Payment.create(payment)
    end
  end

end
