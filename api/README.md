# 接口文档

## HTTP/1.1 文档

### 老版的

* [Hypertext Transfer Protocol -- HTTP/1.1](https://tools.ietf.org/html/rfc2616)

### 新版的

* [Message Syntax and Routing](https://tools.ietf.org/html/rfc7230)
* [Semantics and Content](https://tools.ietf.org/html/rfc7231)
* [Conditional Requests](https://tools.ietf.org/html/rfc7232)
* [Range Requests](https://tools.ietf.org/html/rfc7233)
* [Caching](https://tools.ietf.org/html/rfc7234)
* [Authentication](https://tools.ietf.org/html/rfc7235)

### 其它

* [method PATCH](https://tools.ietf.org/html/rfc5789)
* [Hypertext Transfer Protocol (HTTP) Status Code Registry](http://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml)

## Header

请求的头

### Accept

发送端（客户端）希望接受的数据类型

* 参考 <http://www.informit.com/articles/article.aspx?p=1566460>

```
Accept: application/vnd.greedlab+json;version=1.0
```

### User-Agent

包含`应用标识符`、`终端`、`版本`。不传返回 `403 Forbidden`

```
User-Agent: <boundle id>/<client>/<version>
```

| key | 说明 | 备注
| --- | --- | --- |
| bundle id | 应用标识符 | eg:com.greedlab.greedpatch |
| client | 终端类型 | [front/ios/android]|
| version | 应用版本 | eg:1.0 |

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

## Method

| method | SQL命令 | 是否幂等 | 说明 |
| --- | --- | --- | --- |
| GET | SELECT | 是 | 从服务器取出资源 |
| POST | CREATE | 否 | 在服务器新建一个资源 |
| PUT | UPDATE | 是 | 在服务器更新资源（客户端提供改变后的完整资源）|
| PATCH | UPDATE | 是 | 在服务器更新资源（客户端提供改变的属性）|
| DELETE | DELETE | 是 | 从服务器删除资源 |

### 返回结果

| method | URI | 返回状态 | 返回结果 |
| --- | --- | --- | --- |
| GET | /collection | 200 | 返回资源对象的列表（数组）|
| GET | /collection/resource | 200 |  返回单个资源对象 |
| POST | /collection | 201 | 返回新生成的资源对象 |
| PUT | /collection/resource | 201 |  返回完整的资源对象 |
| PATCH | /collection/resource | 201 |  返回完整的资源对象 |
| DELETE | /collection/resource | 200/204 | 200:返回一个空文档,204:有返回 |

## 状态码

* <http://baike.baidu.com/view/1790469.htm>

| 值 | 说明 | 备注 |
| --- | --- | --- |
| 2 开头 | 请求成功 |
| 3 开头 | 重定向 |
| 4 开头 | 请求错误 |
| 5、6 开头 | 服务器错误 |

| 值 | 提示信息 | 请求方式 | 说明 | 备注 |
| --- | --- | --- |
| 200 | OK | [*] | 服务器成功返回用户请求的数据 | 该操作是幂等的，需要有返回数据，如果没有，用 204 |
| 201 | Created | [POST/PUT/PATCH] | 用户新建或修改数据成功 | 返回资源链接 |
| 202 | Accepted | [*] | 表示一个请求已经进入后台排队（异步任务） | |
| 203 | Non-Authoritative Information | [GET] | 服务器已成功处理了请求，但返回的实体头部元信息不是在原始服务器上有效的确定集合，而是来自本地或者第三方的拷贝。当前的信息可能是原始版本的子集或者超集 | 使用此状态码不是必须的，而且只有在响应不使用此状态码便会返回200 OK的情况下才是合适的 |
| 204 | No Content | [*] | 响应执行成功，但没有数据返回，浏览器不用刷新，不用导向新页面 | 响应被禁止包含任何消息体，使用ajax时，当只需要知道响应成功或失败的情况，则可以使用状态码HTTP 204来代替HTTP 200，减少多余的数据传输。 |
| 205 | Reset Content | [*] | 服务器成功处理了请求，且没有返回任何内容。但是与204响应不同，返回此状态码的响应要求请求者重置文档视图 | 该响应主要是被用于接受用户输入后，立即重置表单，以便用户能够轻松地开始另一次输入,响应被禁止包含任何消息体 |
| 304 | Not Modified | [GET] | 如果客户端发送了一个带条件的 GET 请求且该请求已被允许，而文档的内容（自上次访问以来或者根据请求的条件）并没有改变，则服务器应当返回这个状态码 | 响应禁止包含消息体 |
| 400 | Bad Request | [POST/PUT/PATCH] | 请求参数有误 | 例如某个字段的值不符号服务器要求 |
| 401 | Unauthorized | [*] | 用户认证失败 |
| 403 | Forbidden | [*] | 用户得到授权,但禁止访问 | 无权限访问、请求次数过多等 |
| 404 | Not Found | [*] | 用户发出的请求针对的是不存在的记录，服务器没有进行操作 |  |
| 405 | Not Allowed | [*] | 当资源不允许使用某个 HTTP 方法时返回该错误码 | 返回一个 Allow 头,其中带有该资源的有效 HTTP 方法 |
| 406 | Not Acceptable | [*] | 用户请求的格式不可得 | 比如用户请求 Accept 是 JSON格式，但是服务器只有XML格式 |
| 408 | Request Timeout | [*] | 请求超时 |  |
| 410 | Gone | [GET] | 用户请求的资源被永久删除，且不会再得到的 |  |
| 415 | Unsupported Media Type | [*] | 求的方法和所请求的资源，请求中提交的实体并不是服务器中所支持的格式 | 比如用户请求实体是JSON格式，但服务器是只能处理XML格式 |
| 422 | Unprocessable Entity | [*] | 请求格式正确，但是由于含有语义错误，无法响应 | 例如某个字段的值符号服务器要求，但是无法处理,WebDAV 才支持 |
| 500 | Internal Server Error | [*] | 服务器发生错误 | 用户将无法判断发出的请求是否成功 |
| 503 | Service Unavailable | [*] | 由于临时的服务器维护或者过载，服务器当前无法处理请求 |

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
