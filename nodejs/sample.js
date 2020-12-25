var unirest = require("unirest");

var req = unirest("GET", "https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail");

req.headers({
	"x-rapidapi-key": "<YOUR API KEY>",
	"x-rapidapi-host": "taobao-api2.p.rapidapi.com",
	"useQueryString": true
});


req.end(function (res) {
	if (res.error) throw new Error(res.error);

	console.log(res.body);
});
