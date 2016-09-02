# 获取工程详情

系统管理员或工程成员可访问

## URI

```
/projects/:id
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
| :id | string | 是 | 工程 ID |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 |  获取成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| _id | string | 工程 ID |  |
| bundle_id | string | 是 | 应用标识符 |  |  |
| name | string | 工程名称 |  |
| introduction | string | 工程介绍 |  |
| members | member array | 工程成员列表 | [详细说明](../../table/project.md#member) |  |

### 成功返回数据实例

```json
{
  "_id": "FDSF32423",
  "bundle_id": "com.greedlab.greedpatch",
  "name": "project name",
  "introduction": "project Introduction",
  "members": [

  ]
}
```

## 失败

### 失败返回数据

| 状态码 |  说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |  
| 403 | 无权限访问工程 |  
| 422 | 工程不存在 |  |  
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "工程不存在"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X GET localhost:4002/projects/57bfbf324681acd0a46e5a80
```
