# 删除 token


## URI

```
/tokens/:id
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

| key | 类型 | 是否必须 | 说明 | 备注 |
| --- | --- | --- | --- | --- |
| :id | string | 是 | token ID |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 204 | 成功 | 无数据返回 |

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | id 不能为空 |  |
| 401 | token 失效 |  |
| 403 | 无权限访问id |  |
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X DELETE localhost:4002/tokens/57c016c88d082a7fad7c35d4
```
