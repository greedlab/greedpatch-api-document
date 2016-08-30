# token 详情

需要用户密码。因为需要传密码，而且返回的也是敏感数据，所以用 POST

## URI

```
/tokens/:id
```

## 请求方式

```
POST
```

## 包头

```
Authorization: Bearer <token>
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 |
| --- | --- | --- | --- | --- |
| :id | string | 是 | token ID |  |
| password | string | 是 | 用户密码 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | ID |  |
| name | string | 名称 | |
| userid | string | 用户 ID |  |
| token | string | token |  |
| status | int |  状态 | [详细说明](../../table/token.md#status) |
| type | int | 类型 | [详细说明](../../table/token.md#type) |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "userid": "FDSF32423",
  "name": "token name",
  "token": "FDSK*2432.dsfi32.sdfaio32",
  "status": 0,
  "type": 1
}
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | id/password 不能为空 |  |
| 401 | token 失效 |  |
| 403 | 密码错误 |  |
| 422 | 无效id |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X POST -d '{"password": "secretpasas"}' localhost:4002/tokens/57c016c88d082a7fad7c35d4
```
