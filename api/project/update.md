# 更新工程

只更新传了的参数。系统管理员或工程管理员可操作

## URI

```
/projects/:id
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
| :id | string | 是 | 工程 ID |  |  |
| name | string | 是 | 工程名称 |  |  |
| introduction | string | 否 | 工程介绍 |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 204 | 成功 | 无返回数据 |

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | 工程名不能为空 | |
| 401 | token 失效 |  |
| 403 | 无权限访问工程 |  |
| 404 | 工程不存在 |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X POST -d '{ "introduction": "hot patch for iOS and Android"}' localhost:4002/projects/57bfbf324681acd0a46e5a80
```
