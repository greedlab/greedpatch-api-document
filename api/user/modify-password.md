# 修改密码

修改密码后要让当前 token 失效，并重新生成 token

## url

```
/user/modify-password
```

## 请求方式

```
post
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

## 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| token | string | 邮箱 |  |
| role | int | 角色 | [详细说明](/table/user.md#role) |

### 成功返回数据实例

```json
{
  "token": "IFEI.rewqri.423jkdsf",
  "role" : 0
}
```

## 出错返回数据

| 状态码 | 状态信息 | 说明 | 备注 |
| --- | --- | --- | --- |
| 401 | token 失效 |  |  |
| 422 | 原始密码错误/新密码无效 |  |  |
| 500 | 服务器内部错误 |  |  |

### 出错返回数据实例

```json
{
  "message": "原始密码错误"
}
```
