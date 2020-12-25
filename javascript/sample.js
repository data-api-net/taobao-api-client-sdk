fetch("https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail", {
	"method": "GET",
	"headers": {
		"x-rapidapi-key": "<YOUR RAPIDAPI KEY>",
		"x-rapidapi-host": "taobao-api2.p.rapidapi.com"
	}
})
.then(response => {
	console.log(response);
})
.catch(err => {
	console.error(err);
});
