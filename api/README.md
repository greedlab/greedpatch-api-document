# 接口文档

## Header

请求的头

### Accept

发送端（客户端）希望接受的数据类型

```
Accept: application/greedpatch.greedlab.v1+json
```

### Content-Type

发送端（客户端|服务器）发送的实体数据的数据类型

```
Content-Type: application/json
```

### Accept-Language

可接受的语言

```
Accept-Language: en,zh
```

### Authorization

需要认证的接口需要在 header 中传入 Authentication，格式如下：

```
Authorization: Bearer <token>
```

## 翻页

### 请求参数

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| page | int | 当前页数 | 默认 0 |
| per_page | int |  每页数量 | 默认 20 |

### 返回数据

使用 [Web Linking](https://tools.ietf.org/html/rfc5988) 表示翻页

* [parse-link-header](https://github.com/thlorenz/parse-link-header) 解析 `Web Linking`
* [format-link-header](https://github.com/jonathansamines/format-link-header) 生成 `Web Linking`
