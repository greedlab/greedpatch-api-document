# 删除成员

系统管理员或工程管理员可操作


## URI

```
/projects/:project/members/:member
```

## 请求方式

```
DELETE
```

## 包头

```
Authorization: Bearer <token>
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| :project | string | 是 | 工程 ID |  |  |
| :member | string | 是 | 成员 ID |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 204 |  删除成功 | |

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
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X DELETE localhost:4002/projects/57bfebadd2dbc1cea6430f8b/members/57bfdfa7dc0b51d1a5e75fd1
```

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxNzkzOTI4MTgsImV4cCI6MTQ3NDc3MTM5MjgxOCwiaWQiOiI1N2JmYTljZDUwMWMzOTE5YTI1YTdkNGMiLCJzY29wZSI6ImRlZmF1bHQifQ.z1Mm55-ItrO2KZj3Fakvt22JNmqjf2jBMeP-UVA2i7M" -X DELETE localhost:4002/projects/57bfebadd2dbc1cea6430f8b/members/57bfdfa7dc0b51d1a5e75fd1
```
