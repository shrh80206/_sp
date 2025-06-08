import threading
import requests

# 定義要爬的網址清單
urls = [
    "https://example.com",
    "https://openai.com",
    "https://www.python.org",
    "https://www.wikipedia.org",
    "https://github.com"
]

# 每個執行緒負責下載一個網址
def fetch(url):
    try:
        res = requests.get(url, timeout=10)
        print(f"{url} 下載成功，大小：{len(res.text)} bytes")
    except Exception as e:
        print(f"{url} 下載失敗：{e}")

# 建立並啟動所有執行緒
threads = []
for url in urls:
    t = threading.Thread(target=fetch, args=(url,))
    threads.append(t)
    t.start()

# 等待所有執行緒完成
for t in threads:
    t.join()

print("全部下載完成。")
多執行緒網頁爬蟲