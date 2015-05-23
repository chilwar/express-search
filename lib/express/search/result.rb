# -*- coding: utf-8 -*-
module Express
  module Search
    class Result
      attr_reader :status, :data, :message
    
      def initialize(json)
        @status, @data, @message = json['status'], json['data'], json['message']
      end
    
      def success?
        status == "3"
      end
    
      def to_s
        {success: success?, message: message, data: data}.to_s
      end
    end
  end
end