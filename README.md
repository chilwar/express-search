## 中国快递信息查询 [![Build Status](https://secure.travis-ci.org/chilwar/china-express.png)](http://travis-ci.org/chilwar/china-express)

支持顺丰、EMS、申通、圆通、中通、宅急送、韵达、天天快递、联邦快递、汇通等，无须验证码

### 安装

    gem 'express-search'

### 使用

需要申请 [爱查快递API](http://www.ickd.cn/api/reg.html)，申请成功，爱查会把 `id` 和 `key` 发到你的邮箱

    require 'express/search'
    Express::Search.id = 'your_id_hear'
    Express::Search.key = 'your_key_here'
    Express::Search.get_result(单号, '快递公司')
    
    可选参数(按顺序)：
      type: 返回值类型(json(默认)|html|xml|text)
      encode: 数据编码(gbk|utf8(默认))
      ord: 排序(asc(默认)|desc)

### 示例

    result = Express::Search.get_result('123456', '顺丰')
    result.success? # true
    result.data # [{'time' => "2012-10-08 09:20", 'context' => "签收人是:马"}]
    result.data.each do |item|
      puts "#{item['time']} #{item['context']}"
    end
