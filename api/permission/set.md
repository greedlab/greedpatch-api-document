# 设置权限

只有管理员有权限访问

## URI

```
/permissions/:id
```

## 请求方式

```
PUT
```

## 包头

```
Authorization: Bearer <token>
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| :id | string | 是 | 权限类型 | [详细说明](../../table/permission.md#id) |  |
| permission | int | 是 | 权限 | [详细说明](../../table/permission.md#permission) | 0 |
| domains | array | 否 | 限定的邮箱域名 | status=2 时有效 | [greedlab.com] |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 204 | 成功 |  |

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
