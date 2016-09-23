# 列出所有用户

只有管理员有权限

* [有翻页](../README.md#翻页)

## URI

```
/users
```

## 请求方式

```
GET
```

## 包头

```
Authorization: Bearer <token>
```

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | ID |  |  |
| email | string | 邮箱 |  | greedpatch@greedlab.com |
| status | int | 状态 | [详细说明](../../table/user.md#status) | 0 |
| role | int | 角色 | [详细说明](../../table/user.md#role) | 0 |
| timestamp | string | 创建时间戳 | 精确到秒 | 1471499261 |

### 成功返回数据实例

```json
[
  {
    "_id": "FDSF32423",
    "email": "user1@greedlab.com",
    "role": 0,
    "status": 0,
    "timestamp": 437281732
  }
]
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 403 | 无权限访问 | 不是管理员 |
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxNzkzOTI4MTgsImV4cCI6MTQ3NDc3MTM5MjgxOCwiaWQiOiI1N2JmYTljZDUwMWMzOTE5YTI1YTdkNGMiLCJzY29wZSI6ImRlZmF1bHQifQ.z1Mm55-ItrO2KZj3Fakvt22JNmqjf2jBMeP-UVA2i7M" -X GET localhost:4002/users
```
