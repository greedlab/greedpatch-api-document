# 列出用户 token

默认列出从设置界面生成 token

* [有翻页](../README.md#翻页)

## URI

```
/tokens
```

## 请求方式

```
GET
```

## 包头

```
Authorization: Bearer <token>
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 |
| --- | --- | --- | --- | --- |
| status | int | 否 | 状态 | 默认设 0 |
| type | int | 否 | 类型 | 默认设 1 |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 |  |

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
[
  {
    "id": "FDSF32423",
    "userid": "FDSF32423",
    "name": "token name",
    "token": "FDSK*2432.dsfi32.sdfaio32",
    "status": 0,
    "type": 1
  }
]
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X GET localhost:4002/tokens
```
