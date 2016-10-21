## Express Search
[![Gem Downloads](http://img.shields.io/gem/dt/express-search.svg)](https://rubygems.org/gems/express-search)
[![Build Status](https://travis-ci.org/chilwar/express-search.svg?branch=master)](http://travis-ci.org/chilwar/express-search)

支持顺丰、EMS、申通、圆通、中通、宅急送、韵达、天天快递、联邦快递、汇通等，无须验证码

### Install

    gem 'express-search'

### Usage

需要爱查快递的`id`和`key`， [申请爱查快递API](http://www.ickd.cn/api/reg.html)

    require 'express/search'
    Express::Search.id = 'id_sample'
    Express::Search.key = 'key_sample'
    Express::Search.get_result(单号, '快递公司')
    
    可选参数(按顺序)：
      type: 返回值类型(json(默认)|html|xml|text)
      encode: 数据编码(gbk|utf8(默认))
      ord: 排序(asc(默认)|desc)

### Sample

    result = Express::Search.get_result('123456', '顺丰')
    result.success? # true
    result.data # [{'time' => "2015-05-05 09:20", 'context' => "您的快递被大水冲走了"}]
    result.data.each do |item|
      puts "#{ item['time'] } #{ item['context'] }"
    end
