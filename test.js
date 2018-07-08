let MD5 = require('md5'),
    moment = require('moment')
xml2js = require('xml2js'),
    url = "https://api.mch.weixin.qq.com/pay/unifiedorder",// 下单请求地址
    appid = 'wx03d2979337a9fdc2',
    mch_id = '1508820461',
    notify_url = 'http://www.baidu.com',
    out_trade_no = '123',// 微信会有自己订单号、我们自己的系统需要设置自己的订单号
    total_fee = '0.01',// 注意，单位为分
    body = '商品简单描述',
    trade_type = 'NATIVE',// 交易类型，JSAPI--公众号支付、NATIVE--原生扫码支付、APP--app支付
    // nonce_str = moment().format('YYYYMMDDHHmmssSSS'),// 随机字符串32位以下
    nonce_str = '41cf9132819711e8adc0fa7ae01bbebc',
    // stringA = `appid=${appid}&body=${body}&mch_id=${mch_id}&nonce_str=${nonce_str}&notify_url=${
    //     //     notify_url}&out_trade_no=${out_trade_no}&spbill_create_ip=${ctx.request.ip}&total_fee=${total_fee}&trade_type=${trade_type}`,

    time_stamp = new Date().getTime(),

    stringA = `appid=${appid}&mch_id=${mch_id}&nonce_str=${nonce_str}&product_id=1&time_stamp=${time_stamp}`,
    stringSignTemp = stringA + "&key=BA46CAA66E470D3E7368D269FAE98C51", //注：key为商户平台设置的密钥key

    sign = MD5(stringSignTemp).toUpperCase();  //注：MD5签名方式

const qrString = `weixin://wxpay/bizpayurl?appid=${appid}&mch_id=${mch_id}&nonce_str=${nonce_str}&product_id=1&time_stamp=${time_stamp}&sign=${sign}`

console.log(appid, mch_id, nonce_str, time_stamp)
console.log(sign)
console.log(qrString)