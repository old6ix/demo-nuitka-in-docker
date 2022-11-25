import requests

req = requests.get('https://myip.ipip.net/')

print(f'Status code: {req.status_code}')
print(f'IP location: {req.content.decode()}')
