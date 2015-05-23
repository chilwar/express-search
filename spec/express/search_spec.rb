# -*- coding: utf-8 -*-
require File.expand_path('../../spec_helper', __FILE__)

describe Express::Search do
  
  let(:id) { 136744469 }
  
  let(:secret) { "chilwar" }
  
  let(:nu) { 12345 }
  
  let(:company) { "圆通" }
  
  let(:com) { "yuantong" }
  
  let(:body) do
    {
      status: "3",
      message: "",
      errCode: "",
      data: [
        { time: "2015-03-17 20:40", content: "上海市长宁区东部公司 已收件" },
        { time: "2015-03-17 20:42", content: "上海市长宁区东部公司 已打包" },
        { time: "2015-03-18 21:11", content: "天津转运中心公司 已拆包" },
        { time: "2015-03-18 23:00", content: "天津转运中心公司 已发出" },
        { time: "2015-03-19 08:06", content: "天津市滨海新区滨海公司 已收入" },
        { time: "2015-03-19 08:38", content: "天津市滨海新区滨海公司 派件中" },
        { time: "2015-03-19 13:13", content: "天津市滨海新区滨海公司 已签收" }
      ]
    }.to_json.to_s
  end
  
  before do
    stub_request(:get, "http://api.ickd.cn?id=#{ id }&secret=#{ secret }&nu=#{ nu }&com=#{ com }&encode=utf8&ord=asc&type=json").to_return(body: body)
    WebMock.disable_net_connect!
  end
  
  it "Should be search" do
    Express::Search.id = id
    Express::Search.secret = secret
    result = Express::Search.get_result("12345", "圆通")
    result.success?.should be_truthy
    result.data.should_not be_empty
  end
  
end
