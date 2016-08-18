# 工程详情

## url

```
/project/detail
```

## 请求方式

```
post
```

## 包头

```
Authorization: Bearer <token>
```

## 请求参数

| key | 类型 | 是否必须 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- | --- |
| id | string | 是 | 工程 ID |  |  |

## 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | 工程 ID |  |
| name | string | 工程名称 |  |
| introduction | string | 工程介绍 |  |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "name": "project name",
  "Introduction": "project Introduction"
}
```

## 出错返回数据

| 状态码 | 状态信息 | 说明 | 备注 |
| --- | --- | --- | --- |
| 401 | token 失效 |  |  |
| 422 | 工程不存在 |  |  |
| 500 | 服务器内部错误 |  |  |

### 出错返回数据实例

```json
{
  "message": "工程不存在"
}
```
