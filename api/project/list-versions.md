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
| versions | version array | 版本列表 |  |

#### version

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| _id | string | 工程版本号 |  |
| project_name | string | 工程名 |
| patch_version | int | 最大补丁版本号 |  |


### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "project_name": "project name",
  "versions": [
    {
      "_id": "1.0",
      "patch_version": 1
    },
    {
      "_id": "1.1",
      "patch_version": 2
    }
  ]
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
