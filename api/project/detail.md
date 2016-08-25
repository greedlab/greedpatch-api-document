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
| id | string | 工程 ID |  |
| bundle_id | string | 是 | 应用标识符 |  |  |
| name | string | 工程名称 |  |
| introduction | string | 工程介绍 |  |
| members | member array | 工程成员列表 | [详细说明](../../table/project.md#member) |  |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "bundle_id": "com.greedlab.greedpatch",
  "name": "project name",
  "Introduction": "project Introduction",
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
