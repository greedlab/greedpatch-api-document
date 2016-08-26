# 工程成员列表

* [有翻页](../README.md#翻页)
* 系统管理员或工程成员可操作

## URI

```
/projects/:project/members
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
| :project | string | 是 | 工程 ID |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 获取成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| members.id | string | 成员 ID |  |
| members.email | string | 成员邮箱 |  |
| members.role | string | 成员角色 | 0：工程管理员，1：工程普通成员 |

### 成功返回数据实例

```json
{
  "members": [
    {
      "id": "fdskirwq222",
      "email": "greedpatch@greedlab.com",
      "role": 1
    },
    {
      "id": "fdskirwq222",
      "email": "user1@greedlab.com",
      "role": 0
    }
  ]
}
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 403 | 无权限访问工程 |  |
| 404 | 工程不存在 |  |
| 500 | 服务器内部错误 |  |

### 出错返回数据实例

```json
{
  "message": "工程不存在"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X GET localhost:4002/projects/57bfebadd2dbc1cea6430f8b/members
```
