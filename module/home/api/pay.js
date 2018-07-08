const router = require('../../router');
const orderModel = require('../../../model/order')
const courseModel = require('../../../model/course')
const wxOrder = require('./comm/wxOrder')
const uuid = require('../../../util/uuid')
router.post('/order', async (ctx) => {
    try {
        const courseItem = await courseModel.find({
            where: {id: ctx.request.body.courseId},
        })
        const result = await orderModel.create({
            uuid: uuid(),
            status: 0,
            type: 0,
            price: courseItem.price,
            courseId: ctx.request.body.courseId,
            userId: ctx.session.userLoginId
        })

        const orderResult = await wxOrder({
            body: `购买--${courseItem.name}`,
            out_trade_no: result.uuid,
            total_fee: courseItem.price,
            product_id: courseItem.id,
            ip: '183.160.24.194'
        });

        console.log(orderResult)

        if(!(orderResult.return_code == 'SUCCESS' && orderResult.return_msg == 'OK')){
            ctx.body = _errorResponse('微信统一下单失败')
            return
        }
        if(result) {
            ctx.body = _successResponse('列表获取', result);
            return
        }else {
            ctx.body = _errorResponse('下单失败')
            return
        }
    } catch (e) {
        ctx.body = _errorResponse('下单失败')
        return
    }
})
router.post('/pay/callback', async (ctx) => {
    console.log(ctx)
    orderModel.update({status: 1},{
        uuid: '1231231'
    })
})