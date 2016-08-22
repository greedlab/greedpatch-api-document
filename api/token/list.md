# 列出所有用户生成的 token

只列出从设置界面生成 token，需要输入用户密码

* [有翻页](../README.md#翻页)

## URI

```
/tokens
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

| key | 类型 | 是否必须 | 说明 | 备注 |
| --- | --- | --- | --- | --- |
| password | string | 是 | 用户密码 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 200 | 成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | ID |  |
| name | string | 名称 | |
| token | string | token |  |
| type | int | 类型 | 1 |
| timestamp | string | 添加时间戳 | 精确到秒 |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "name": "token name",
  "token": "FDSK*2432.dsfi32.sdfaio32",
  "type": 1,
  "timestamp": 437281732
}
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | 密码不能为空 |  |
| 401 | token 失效 |  |
| 422 | 密码错误 |  |
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```
