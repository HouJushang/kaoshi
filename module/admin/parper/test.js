const addFn = require('./addParper')
const addOptionFn = require('./addParperOption')
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
const optionData = {
    title: "你是（ ），我哦哦了",
    type: 0,
    optionA: 'a',
    optionB: 'b',
    optionC: 'c',
    optionD: 'd',
    answer: 'A',
    parperId: 1
}
async function testAddParperOption() {
    const result = await addOptionFn(optionData);
    console.log(result)
}
testAddParperOption()