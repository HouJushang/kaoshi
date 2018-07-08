const router = require('../../router');
const orderModel = require('../../../model/order')
const userModel = require('../../../model/user')
const courseModel = require('../../../model/course')
const courseItemModel = require('../../../model/courseItem')

router.get('/learn/course', async (ctx) => {

    const result = await orderModel.findAll({
        where: { status: 1, userId: ctx.session.userLoginId},
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
    const resultPromise = []
    result.forEach(e => {
        const promiseItem = courseItemModel.findAll({
            where: {
                courseId: e.course.id
            }
        })
        resultPromise.push(promiseItem)
    })


    const viewData = Object.assign(ctx.viewData, {
        category: 'course',
        list: result,
        courseItem: await Promise.all(resultPromise)
    });
    ctx.body = await ctx.render('learn/course', viewData)
})