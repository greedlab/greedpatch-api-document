# 检查是否有补丁

工程成员可访问

## URI

```
/patches/check
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
| bundle_id | string | 是 | 应用标识符 |  |  |
| client | string | 是 | 终端类型 |  |  |
| app_version | string | 是 | 应用版本 |  |  |
| patch_version | string | 否 | 当前补丁版本号 | 和 app_version 对应 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 有补丁 | 有数据返回 |
| 204 | 无补丁 | 不返回任何数据 |

### 有补丁返回数据

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| bundle_id | string | 应用标识符 |  |  |
| client | string | 终端类型 |  |  |
| app_version | string | 应用版本 |  |  |
| patch_version | string | 最新补丁版本号 |  |  |
| hash | string | 补丁 hash 值 |  |  |
| patch_url | string | 补丁下载地址 |  |  |

### 有补丁返回数据实例

```json
{
  "bundle_id": "com.greedlab.greedpatch",
  "client": "ios",
  "app_version": "1.0",
  "patch_version": "1",
  "hash": "FDSJFEIoidwiew12",
  "patch_url": "http://www.greedpatch.greedlab.com/patch/XXXXXX.zip"
}
```

## 失败

### 失败返返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 403 | 无权限访问 bundle_id |  |
| 404 | bundle_id 不存在 |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "bundle_id 不存在"
}
```
