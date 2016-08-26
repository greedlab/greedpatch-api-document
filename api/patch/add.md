# 添加补丁

管理员或工程成员可访问

## URI

```
/projects/:project/patches
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
| :project | string | 是 | 工程 ID |  |  |
| client | string | 是 | 终端类型 |  |  |
| project_version | string | 是 | 工程版本 |  |  |
| patch_version | string | 是 | 当前补丁版本号 | 和 app_version 对应 |  |
| hash | string | 是 | 补丁 hash 值 |  |  |
| patch_url | string | 是 | 补丁下载地址 |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 201 | 创建成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| id | string | 补丁 ID |  |  |
| project_id | string | 工程 ID |  |  |
| project_version | string | 工程版本 |  |  |
| patch_version | string | 最新补丁版本号 |  |  |
| hash | string | 补丁 hash 值 |  |  |
| patch_url | string | 补丁下载地址 |  |  |

### 成功返回数据实例

```json
{
  "id": "DSF565ew",
  "project_id": "DSF565ew",
  "project_version": "1.0",
  "patch_version": "1",
  "hash": "FDSJFEIoidwiew12",
  "patch_url": "http://www.greedpatch.greedlab.com/patch/XXXXXX.zip"
}
```

## 失败

### 失败返返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | project 不能为空 |  |
| 401 | token 失效 |  |
| 403 | 无权限 |  |
| 422 | project 不存在 |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -H "Accept: application/vnd.greedlab+json" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE0NzIxODEyMzUxMzksImV4cCI6MTQ3NDc3MzIzNTEzOSwiaWQiOiI1N2JmOWJhMWNlODRjOTk5YTBlZmQ1YjciLCJzY29wZSI6ImRlZmF1bHQifQ.ESm0koiqDc8nfRTiHp4Uwo7PKNCtPRU5dfVfLT6MUSk" -X POST -d '{"project_version": "1.0","patch_version": "1", "hash":"hash","patch_url":"patch_url"}' localhost:4002/projects/57bfebadd2dbc1cea6430f8b/patches
```
