const router = require('../../router');
const parperModel = require('../../../model/parper')
const addParper = require('./addParper')
router.post('/paper/add', async (ctx) => {
    try {
        if(addParper(ctx.request.body)){
            ctx.body = _successResponse('添加成功', result);
        } else {
            ctx.body = _successResponse('添加成功');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})