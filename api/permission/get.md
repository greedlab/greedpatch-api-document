# 获取权限

只有管理员有权限访问

## URI

```
/permissions/:type
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
| :type | int | 是 | 权限类型 | [详细说明](../../table/permission.md#type) |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| type | int | 权限类型 | [详细说明](../../table/permission.md#type) |  0 |
| permission | int | 权限 | [详细说明](../../table/permission.md#permission) | 0 |
| domains | array | 限定的邮箱域名 | status=2 时有效 | [greedlab.com] |

### 成功返回数据实例

```json
{
  "type": 0,
  "permission": 2,
  "domains": [
    "greedlab.com"
  ]
}
```

## 失败

### 失败返回数据

| 状态码 |  说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |  
| 403 | 无权限 |  
| 422 | type不存在 |  |  
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "无权限"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxNzkzOTI4MTgsImV4cCI6MTQ3NDc3MTM5MjgxOCwiaWQiOiI1N2JmYTljZDUwMWMzOTE5YTI1YTdkNGMiLCJzY29wZSI6ImRlZmF1bHQifQ.z1Mm55-ItrO2KZj3Fakvt22JNmqjf2jBMeP-UVA2i7M" -X GET localhost:4002/permissions/1
```
