# 设置自己的密码

通过重置密码收到的链接进行重新设置密码,只有通过重置密码接口生成的 token 调用此接口才能认证通过。,设置密码后要让当前 token 失效，并重新生成 token。

## URI

```
/set-password
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
| token | string | 是 | 修改密码的 token |  |  |
| password | string | 是 | 新密码 | 未加密 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| token | string | 访问令牌 |  |
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

| 状态码 | 状态信息 | 说明 | 备注 |
| --- | --- | --- | --- |
| 403 | 无效 token |  |  |
| 500 | 服务器内部错误 |  |  |

### 出错返回数据实例

```json
{
  "message": "无效 token"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -X POST -d '{"token": "57c3a6d88efc1b7fdbf2bec9","password": "new_password_1"}' localhost:4002/set-my-password
```
