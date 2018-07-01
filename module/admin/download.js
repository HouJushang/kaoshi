const router = require('../router');
const downloadModel = require('../../model/download')
router.post('/admin/download/add', async (ctx) => {
    try {
        const result = await downloadModel.create(ctx.request.body)
        ctx.body = _successResponse('添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/download/list', async (ctx) => {
    try {
        const pageInfo = ctx.request.query
        const result = await downloadModel.findAndCountAll({
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']]
        })
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/download/del', async (ctx) => {
    try {
        const result = await downloadModel.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})