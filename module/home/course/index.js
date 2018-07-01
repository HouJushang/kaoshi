const router = require('../../router');
const courseModel = require('../../../model/course')

router.get('/course/:category', async (ctx) => {
    const category = ctx.params.category
    const result = await courseModel.findAll({
        where: {
            category
        }
    })
    Object.assign(ctx.viewData, {
        topCategory: 'course',
        category: ctx.params.category,
        list: result
    })
    console.log(ctx.viewData)
    ctx.body = await ctx.render('course/index', ctx.viewData)
})