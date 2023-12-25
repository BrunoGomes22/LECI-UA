import requests, time

start = time.time()

f = requests.get("http://www.ua.pt")

end = time.time()

print(("Information gotten in %d seconds")%((end-start)))
print(f.headers['Content-Type'])
print(f.__sizeof__())
print(f.status_code)

