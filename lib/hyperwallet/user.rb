module Hyperwallet
  class User < HyperwalletObject

    def self.all(params={})
      res = Hyperwallet.request(:get, '/users', params)
      convert_to_hyperwallet_object(res, User)
    end

    def self.find(key)
      res = Hyperwallet.request(:get, "/users/#{key}")
      convert_to_hyperwallet_object(res, User)
    end

    def self.create(params={})
      res = Hyperwallet.request(:post, '/users', params)
      convert_to_hyperwallet_object(res, User)
    end

    def self.update(key, params)
      res = Hyperwallet.request(:put, "/users/#{key}", MultiJson.dump(params))
      convert_to_hyperwallet_object(res, User)
    end

    # Not yet implemented in REST API
    # def self.delete(key)
    #   res = Hyperwallet.request(:delete, "/users/#{key}", nil)
    #   convert_to_hyperwallet_object(res, User)
    # end

  end
end
