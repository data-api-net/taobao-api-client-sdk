CURL *hnd = curl_easy_init();

curl_easy_setopt(hnd, CURLOPT_CUSTOMREQUEST, "GET");
curl_easy_setopt(hnd, CURLOPT_URL, "https://taobao-api2.p.rapidapi.com/taobao/v1/item/603395007187/detail");

struct curl_slist *headers = NULL;
headers = curl_slist_append(headers, "x-rapidapi-key: <YOUR RAPIDAPI KEY>");
headers = curl_slist_append(headers, "x-rapidapi-host: taobao-api2.p.rapidapi.com");
curl_easy_setopt(hnd, CURLOPT_HTTPHEADER, headers);

CURLcode ret = curl_easy_perform(hnd);
