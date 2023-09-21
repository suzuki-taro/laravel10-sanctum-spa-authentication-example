# https://hurl.dev/

GET http://localhost:8000/sanctum/csrf-cookie
HTTP 204
[Captures]
xsrf_token: cookie "XSRF-TOKEN" urlDecode

POST http://localhost:8000/api/login
Accept: application/json
Referer: localhost
X-XSRF-TOKEN: {{xsrf_token}}
{
  "email":"test@example.com",
  "password":"password"
}
HTTP 200

GET http://localhost:8000/api/user
Accept: application/json
Referer: localhost
