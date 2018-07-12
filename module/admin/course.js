const router = require('../router');
const courseModel = require('../../model/course')
const courseItemModel = require('../../model/courseItem')
router.post('/admin/course/add', async (ctx) => {
    try {
        const result = await courseModel.create(ctx.request.body)
        ctx.body = _successResponse('添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/course/list', async (ctx) => {
    try {
        const pageInfo = ctx.request.query
        const result = await courseModel.findAndCountAll({
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']]
        })
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/course/alllist', async (ctx) => {
    try {
        const result = await courseModel.findAll({
            order:  [['id', 'DESC']]
        })
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/course/del', async (ctx) => {
    try {
        const result = await courseModel.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/courseItem/add', async (ctx) => {
    try {
        const result = await courseItemModel.create(ctx.request.body)
        ctx.body = _successResponse('添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/courseItem/list', async (ctx) => {
    try {
        const result = await courseItemModel.findAll({
            where: ctx.request.query
        })
        ctx.body = _successResponse('获取成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/courseItem/del', async (ctx) => {
    try {
        const result = await courseItemModel.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})