# 生成 token

从设置界面生成 token，生成的 token type 为 1

## URI

```
/tokens
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

| key | 类型 | 是否必须 | 说明 | 备注 |
| --- | --- | --- | --- | --- |
| name | string | 名称 | 是 |  |

## 成功

### 成功返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 201 | 添加成功 |  |

### 成功返回数据

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | ID |  |
| name | string | 名称 | |
| token | string | token |  |
| type | int | 类型 | 1 |

### 成功返回数据实例

```json
{
  "id": "FDSF32423",
  "name": "token name",
  "token": "FDSK*2432.dsfi32.sdfaio32",
  "type": 1
}
```

## 失败

### 失败返回状态码

| 状态码 | 说明 | 备注 |
| --- | --- | --- |
| 400 | name 不能为空 |  |
| 401 | token 失效 |  |  
| 500 | 服务器内部错误 |  |  

### 失败返回数据实例

```json
{
  "message": "token 失效"
}
```
