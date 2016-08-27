# 重置自己的密码

发送重置密码链接到邮箱。后端生成新的 token，重置密码链接为 `<front address>/set-password/<token>`

## URI

```
/reset-password
```

## 请求方式

```
POST
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| email | string | 是 | 邮箱 |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| message | string | 提示信息 |  |

### 成功返回数据实例

```json
{
  "message": "请通过邮件里的链接重新设置密码"
}
```

## 失败

### 失败返回状态码

| 状态码 | 状态信息 | 说明 | 备注 |
| --- | --- | --- | --- |
| 400 | 邮箱不能为空/邮箱格式错误 |  |  |
| 422 | 账号不存在/重置密码邮件发送失败 |  |  |
| 500 | 服务器内部错误 |  |  |

### 失败返回数据实例

```json
{
  "message": "邮箱格式错误"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -X POST -d '{"email": "bell@greedlab.com"}' localhost:4002/reset-password
```
