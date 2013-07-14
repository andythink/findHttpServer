import http.client

conn = http.client.HTTPConnection("119.75.218.77")
conn.request("HEAD","/index.html")
response = conn.getresponse()
print(response.getheader("Server"))
