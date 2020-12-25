package main

import (
	"fmt"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail"

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("x-rapidapi-key", "<YOUR API KEY>")
	req.Header.Add("x-rapidapi-host", "taobao-api2.p.rapidapi.com")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
