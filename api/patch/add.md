# 添加补丁

工程成员可访问

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
| app_version | string | 是 | 应用版本 |  |  |
| patch_version | string | 否 | 当前补丁版本号 | 和 app_version 对应 |  |
| hash | string | 补丁 hash 值 |  |  |
| patch_url | string | 补丁下载地址 |  |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 201 | 创建成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| id | string | 补丁 ID |  |  |
| bundle_id | string | 应用标识符 |  |  |
| client | string | 终端类型 |  |  |
| app_version | string | 应用版本 |  |  |
| patch_version | string | 最新补丁版本号 |  |  |
| hash | string | 补丁 hash 值 |  |  |
| patch_url | string | 补丁下载地址 |  |  |
| timestamp | int | 创建时间 |  |  |

### 成功返回数据实例

```json
{
  "id": "DSF565ew",
  "bundle_id": "com.greedlab.greedpatch",
  "client": "ios",
  "app_version": "1.0",
  "patch_version": "1",
  "hash": "FDSJFEIoidwiew12",
  "patch_url": "http://www.greedpatch.greedlab.com/patch/XXXXXX.zip",
  "timestamp": 234137167
}
```

## 失败

### 失败返返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 404 | bundle_id 不存在 |  |
| 403 | 无权限访问 bundle_id |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "bundle_id 不存在"
}
```
