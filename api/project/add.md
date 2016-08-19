# 添加工程

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
| timestamp | int | 创建时间 |  |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "bundle_id": "FDSF32423",
  "name": "project name",
  "introduction": "project introduction",
  "timestamp": 437281732
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
