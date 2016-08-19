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
| status | int | 状态 | [详细说明](../table/user.md#status) | 0 |
| role | int | 角色 | [详细说明](../table/user.md#role) | 0 |
| timestamp | string | 创建时间戳 | 精确到秒 | 1471499261 |

### 成功返回数据实例

```json
{
  "users": [
    {
      "id": "FDSF32423",
      "email": "user1@greedlab.com",
      "token": "FDSK*2432.dsfi32.sdfaio32",
      "type": 1,
      "timestamp": 437281732
    }
  ]
}
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
