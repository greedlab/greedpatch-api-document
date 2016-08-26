# 添加工程

添加工程时，把自己做为管理员添加到 members

## URI

```
/projects
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
| bundle_id | string | 是 | 应用标识符 |  |  |
| name | string | 是 | 工程名称 |  |  |
| introduction | string | 否 | 工程介绍 |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 201 | 添加成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | 工程 ID |  |
| bundle_id | string | 应用标识符 |  |  
| name | string | 工程名称 |  |  
| introduction | string | 工程介绍 |  |
| members | member array | 工程成员列表 | [详细说明](../../table/project.md#member) |  |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "bundle_id": "FDSF32423",
  "name": "project name",
  "introduction": "project introduction",
  "members": [

  ]
}
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | bundle_id/name 不能为空 |  |
| 401 | token 失效 |  |  
| 422 | bundle_id 已存在 |  |  
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "bundle_id 已存在"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X POST -d '{"bundle_id": "com.greedlab.greedpatch", "name": "greedpatch", "introduction": "hot patch"}' localhost:4002/projects
```
