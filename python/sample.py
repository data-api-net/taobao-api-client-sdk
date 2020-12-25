import requests

url = "https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail"

headers = {
    'x-rapidapi-key': "<YOUR API KEY>",
    'x-rapidapi-host': "taobao-api2.p.rapidapi.com"
    }

response = requests.request("GET", url, headers=headers)

print(response.text)
