OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
	.url("https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail")
	.get()
	.addHeader("x-rapidapi-key", "<YOUR API KEY>")
	.addHeader("x-rapidapi-host", "taobao-api2.p.rapidapi.com")
	.build();

Response response = client.newCall(request).execute();
