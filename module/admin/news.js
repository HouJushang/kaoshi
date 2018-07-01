const router = require('../router');
const contentModel = require('../../model/news')
router.post('/admin/news/add', async (ctx) => {
    try {
        const result = await contentModel.create(ctx.request.body)
        ctx.body = _successResponse('添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/news/list', async (ctx) => {
    try {
        const pageInfo = ctx.request.query
        const result = await contentModel.findAndCountAll({
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']]
        })
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/news/del', async (ctx) => {
    try {
        const result = await contentModel.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})