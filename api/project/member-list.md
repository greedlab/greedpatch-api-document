# 工程成员列表

## url

```
/project/members
```

## 请求方式

```
GET
```

## 包头

```
Authorization: Bearer <token>
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| id | string | 是 | 工程 ID |  |  |

## 成功

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| members.email | string | 成员邮箱 |  |
| members.role | string | 成员角色 |  |

### 成功返回数据实例

```json
{
  "members": [
    {
      "email": "greedpatch@greedlab.com",
      "role": 1
    },
    {
      "email": "user1@greedlab.com",
      "role": 0
    }
  ]
}
```

## 失败

### 失败返回状态码

| 状态码 | 状态信息 | 说明 | 备注 |
| --- | --- | --- | --- |
| 401 | token 失效 |  |  |
| 422 | 工程不存在 |  |  |
| 500 | 服务器内部错误 |  |  |

### 出错返回数据实例

```json
{
  "message": "工程不存在"
}
```
