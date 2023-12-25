import requests

url = ...
values = {"nome": "Ana", "idade": 20}
r = requests.post(url, data = values)
print(r.status_code)
