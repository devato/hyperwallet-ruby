module Hyperwallet
  class Payment < HyperwalletObject

    def self.create(params={})
      res = Hyperwallet.request(:post, '/payments', params)
      convert_to_hyperwallet_object(res, Payment)
    end

  end
end
