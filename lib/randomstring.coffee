md5 = require('MD5')
uuid = require('node-uuid')

module.exports = {
	string:  (callback) ->
		callback({string: md5(uuid.v4().toString() + '|' + (new Date().getTime()).toString()).toString()})
}
