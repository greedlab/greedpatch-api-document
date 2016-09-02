# 上传文件


## URI

```
/files
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

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 201 | 上传成功 | |

### 成功返回数据

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| file_url | string | 文件 URL |  |  |

### 成功返回数据实例

```json
{
  "file_url": "http://www.greedpatch.greedlab.com/patch/XXXXXX.zip"
}
```

## 失败

### 失败返返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 401 | token 失效 |  |
| 500 | 服务器内部错误 |  |

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```

## example

```
curl -F file=@"file/path" -X POST  localhost:4002/files
```
