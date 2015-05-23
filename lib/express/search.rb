# -*- coding: utf-8 -*-
require "express/search/version"
require 'net/http'
require 'uri'
require 'json'
require 'express/search/result'
require 'express/search/company'

module Express
  module Search
    include Express::Search::Company
  
    class << self
      attr_accessor :id, :secret
    end
  
    def self.get_result(nu, com, type = "json", encode = "utf8", ord = "asc")
      uri = URI('http://api.ickd.cn')
      uri.query = URI.encode_www_form({
        id: id,
        secret: secret,
        nu: nu,
        com: company_code(com),
        type: type,
        encode: encode,
        ord: ord
      })
    
      Express::Search::Result.new JSON.parse(Net::HTTP.get_response(uri).body)
    end
  
  end
end
