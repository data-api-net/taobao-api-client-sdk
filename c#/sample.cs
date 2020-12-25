var client = new HttpClient();
var request = new HttpRequestMessage
{
    Method = HttpMethod.Get,
    RequestUri = new Uri("https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail"),
    Headers =
    {
        { "x-rapidapi-key", "<YOUR API KEY>" },
        { "x-rapidapi-host", "taobao-api2.p.rapidapi.com" },
    },
};
using (var response = await client.SendAsync(request))
{
    response.EnsureSuccessStatusCode();
    var body = await response.Content.ReadAsStringAsync();
    Console.WriteLine(body);
}
