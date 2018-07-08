const router = require('../router');
const orderModel = require('../../model/order')
const userModel = require('../../model/user')
const courseModel = require('../../model/course')
router.get('/admin/order/success', async (ctx) => {
    try {
        const pageInfo = ctx.request.query
        const result = await orderModel.findAndCountAll({
            where: { status: 1},
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']],
            include: [
                {
                    model: userModel
                },
                {
                    model: courseModel
                }
            ]
        })
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/admin/order/error', async (ctx) => {
    try {
        const pageInfo = ctx.request.query
        const result = await orderModel.findAndCountAll({
            where: { status: 0},
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']],
            include: [
                {
                    model: userModel
                },
                {
                    model: courseModel
                }
            ]
        })
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})