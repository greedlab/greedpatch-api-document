# 获取自己的信息

后台根据 token 获取 userID

## URI

```
/users/me/profile
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
| 200 |  获取成功 | 返回无密码的 [User](../../table/user.md) |

## 失败

### 失败返回数据

| 状态码 |  说明 | 备注 |
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
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIyOTQ4NDI3NjIsImV4cCI6MTQ3NDg4Njg0Mjc2MiwiaWQiOiI1N2MxNmIyMGI5MDdmMTk5YmZiZGQ1NjIiLCJzY29wZSI6ImRlZmF1bHQifQ.vayskdpIzjNBMLijmBDuL2UxkxahYnS3F_fznEpcuW4" -X GET localhost:4002/users/me/profile
```
