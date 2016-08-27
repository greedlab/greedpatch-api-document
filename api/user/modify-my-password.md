# 修改自己的密码

修改密码后要让当前 token 失效，并重新生成 token

## URI

```
/modify-my-password
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

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| password | string | 是 | 原始密码 | 未加密 |  |
| new_password | string | 是 | 新密码 | 未加密 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| token | string |  |  |
| user | object | 无密码的用户信息 | [详细说明](../../table/user.md) |

### 成功返回数据实例

```json
{
  "token": "IFEI.rewqri.423jkdsf",
  "user" : {

  }
}
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | 原始密码/新密码 不能为空 |  |
| 401 | token 失效 |  |
| 422 | 原始密码错误/新密码无效 |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "原始密码错误"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIyOTQyNDEyMjYsImV4cCI6MTQ3NDg4NjI0MTIyNiwiaWQiOiI1N2MxNmIyMGI5MDdmMTk5YmZiZGQ1NjIiLCJzY29wZSI6ImRlZmF1bHQifQ.NQlByolepxftXqZNRtY4c2n8u1seZ9QRKRIS6M0KN4I" -X POST -d '{"password": "secretpasas", "new_password": "new_password"}' localhost:4002/modify-my-password

curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIyOTQ1NTc4NTQsImV4cCI6MTQ3NDg4NjU1Nzg1NCwiaWQiOiI1N2MxNmIyMGI5MDdmMTk5YmZiZGQ1NjIiLCJzY29wZSI6ImRlZmF1bHQifQ.ZLwqEQSGRgUerSc0BVWpDyKDKlM7CkITFDtMmj7woho" -X POST -d '{"password": "new_password", "new_password": "secretpasas"}' localhost:4002/modify-my-password

```
