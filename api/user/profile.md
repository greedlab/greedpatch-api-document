# 用户信息

后台根据 token 获取 userID

## URI

```
/profile
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
| 200 |  获取成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | 用户 ID |  |
| email | string | 用户邮箱 |  |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "email": "greedpatch@greedlab.com"
}
```

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
