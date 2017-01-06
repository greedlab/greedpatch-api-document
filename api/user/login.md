# 登录

## URI

```
/login
```

## 请求方式

```
POST
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| email | string | 是 | 邮箱 |  |  |
| password | string | 是 |  密码 | 未加密 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 登录成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| token | string | 邮箱 |  |
| user | object | user 对象 | [详细说明](../../table/user.md) |

### 成功返回数据实例

```json
{
  "token": "IFEI.rewqri.423jkdsf",
  "user" : {
    "email":"test@greedlab.com",
    "_id":"57bf9ba1ce84c999a0efd5b7",
    "role":0,
    "status":0
  }
}
```


## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | 用户名或密码错误 |  |
| 422 | 用户名或密码为空 |  |
| 500 | 服务器内部错误 |  |

### 出错返回数据实例

401

```json
{
  "message": "Email or password error"
}
```

422

```json
{
  "message": "Email is empty",
  "errors": [
    {
      "resource": "User",
      "field": "email",
      "code": "missing_field"
    }
  ]
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -X POST -d '{ "email": "test3@greedlab.com", "password": "secretpasas" }' localhost:4002/login

curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -X POST -d '{ "email": "test3@greedlab.com", "password": "new_password" }' localhost:4002/login
```
