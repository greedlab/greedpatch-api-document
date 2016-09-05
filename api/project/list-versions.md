# 获取工程下所有版本号


## URI

```
/projects/:project/versions
```

## 请求方式

```
GET
```

## 包头

```
Authorization: Bearer <token>
```

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 获取成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | 工程 ID |  |
| versions | array | 版本号列表 | 应用标识符 |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "versions": ["1.0", "1.1"]
}
```

## 失败

### 失败返返回状态码

| 状态码 | 说明 | 备注 |
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
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X GET localhost:4002/projects/57bfbf324681acd0a46e5a80/versions
```
