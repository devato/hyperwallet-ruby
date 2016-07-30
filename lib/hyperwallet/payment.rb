module Hyperwallet
  class Payment < HyperwalletObject

    def self.all
      res = Hyperwallet.request(:get, '/payments')
      convert_to_hyperwallet_object(res, Payment)
    end

    def self.find(key)
      res = Hyperwallet.request(:get, "/payments/#{key}")
      convert_to_hyperwallet_object(res, Payment)
    end

    def self.create(params={})
      res = Hyperwallet.request(:post, '/payments', params)
      convert_to_hyperwallet_object(res, Payment)
    end

  end
end
