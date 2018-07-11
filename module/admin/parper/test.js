const addFn = require('./addParper')
const demoData = {
    title: '2018的考试',
    radio_rank: 1,
    multiple_rank: 2,
    time: 100,
    courseId: 1
}

async function test() {
    const result = await addFn(demoData);
    console.log(result)
}
test()