# -*- coding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'hyperwallet'
require 'rspec/its'
require 'securerandom'
require 'support/test_data'

#monkeypatch request methods
module Hyperwallet
  @mock_rest_client = nil

  def self.mock_rest_client=(mock_client)
    @mock_rest_client = mock_client
  end

  def self.execute_request(opts)
    get_params = (opts[:headers] || {})[:params]
    post_params = opts[:payload]
    case opts[:method]
    when :get then @mock_rest_client.get opts[:url], get_params, post_params
    when :put then @mock_rest_client.put opts[:url], get_params, post_params
    when :post then @mock_rest_client.post opts[:url], get_params, post_params
    when :delete then @mock_rest_client.delete opts[:url], get_params, post_params
    end
  end
end

def test_response(body, code=200)
  body = MultiJson.dump(body)
  double('Response', :body => body, :code => code)
end
