# 注册

第一个注册的用户将成为管理员。

## URI

```
/register
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
| 200 |  成功 | |

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
| 403 | 无权限注册 |  |
| 422 | 邮箱/密码格式错误/邮箱已存在 |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "User is existed",
  "errors": [
    {
      "resource": "User",
      "field": "email",
      "code": "already_exists"
    }
  ]
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -X POST -d '{"email": "bell@greedlab.com","password":"secretpasas"}' localhost:4002/register
```
