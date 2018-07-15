const router = require('../../router');
const recordModel = require('../../../model/parperRecord')
const userdModel = require('../../../model/user')
const courseModel = require('../../../model/course')
const parperModel = require('../../../model/parper')

router.get('/learn/exam', async (ctx) => {
    const record = await recordModel.findAll({
        where: {
            userId: ctx.session.userLoginId
        },
        include: [
            {
                model: userdModel
            },
            {
                model: courseModel
            },
            {
                model: parperModel
            }
        ]
    })

    const viewData = Object.assign(ctx.viewData, {
        category: 'course',
        record
    });
    ctx.body = await ctx.render('learn/exam', viewData)
})