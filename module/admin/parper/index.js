const router = require('../../router');
const addParper = require('./addParper')
const addOption = require('./addOption')
const updateOption = require('./updateOption')
const updateParper = require('./updateParper')
const parperQuery = require('./query')
const parperModel = require('../../../model/parper')
const parperOption = require('../../../model/parperOption')
router.post('/admin/parper/add', async (ctx) => {
    try {
        const countParper = await parperQuery.countParper({courseId: ctx.request.body.courseId})
        if(countParper > 0){
            ctx.body = _errorResponse('该课程已经又考试信息');
            return
        }
        if(addParper(ctx.request.body)){
            ctx.body = _successResponse('添加成功');
            return
        } else {
            ctx.body = _errorResponse('添加失败');
            return
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/admin/parper/update', async (ctx) => {
    try {
        if(updateParper(ctx.request.body)){
            ctx.body = _successResponse('success');
            return
        } else {
            ctx.body = _errorResponse('更新失败');
            return
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.get('/admin/parper/list', async (ctx) => {
    try {
        const pageInfo = ctx.request.query
        const result = await parperQuery.parperList(pageInfo)
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/parper/del', async (ctx) => {
    try {
        const result = await parperModel.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/option/list', async (ctx) => {
    try {
        const result = await parperQuery.optionList(ctx.request.body.pageInfo, ctx.request.body.where)
        ctx.body = _successResponse('列表获取', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/option/add', async (ctx) => {
    try {
        if(addOption(ctx.request.body)){
            ctx.body = _successResponse('添加成功');
            return
        } else {
            ctx.body = _errorResponse('添加失败');
            return
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.post('/admin/option/update', async (ctx) => {
    try {
        if(updateOption(ctx.request.body)){
            ctx.body = _successResponse('success');
            return
        } else {
            ctx.body = _errorResponse('更新失败');
            return
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.delete('/admin/option/del', async (ctx) => {
    try {
        const result = await parperOption.destroy({where: {id: ctx.request.query.id}})
        if (result) {
            ctx.body = _successResponse('删除成功', result);
        } else {
            ctx.body = _errorResponse('删除失败');
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})