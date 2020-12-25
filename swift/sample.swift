import Foundation

let headers = [
	"x-rapidapi-key": "<YOUR API KEY>",
	"x-rapidapi-host": "taobao-api2.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
	if (error != nil) {
		print(error)
	} else {
		let httpResponse = response as? HTTPURLResponse
		print(httpResponse)
	}
})

dataTask.resume()
