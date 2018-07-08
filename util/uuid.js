const nodeUuid = require('node-uuid')
module.exports = function () {
    return nodeUuid.v1().replace(/-/g, '');
}