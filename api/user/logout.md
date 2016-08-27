# 注销

把 token 加到失效 token 列表

## URI

```
/logout
```

## 请求方式

```
POST
```

## 包头

```
Authorization: Bearer <token>
```

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 204 | 注销成功 |  |

## 失败

### 失败返返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 422 | token 格式错误 |  |
| 500 | 服务器内部错误 |  |

### 出错返回数据实例

```json
{
  "message": "token 格式错误"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json"  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIyOTQyNDEyMjYsImV4cCI6MTQ3NDg4NjI0MTIyNiwiaWQiOiI1N2MxNmIyMGI5MDdmMTk5YmZiZGQ1NjIiLCJzY29wZSI6ImRlZmF1bHQifQ.NQlByolepxftXqZNRtY4c2n8u1seZ9QRKRIS6M0KN4I" -X POST localhost:4002/logout
```
