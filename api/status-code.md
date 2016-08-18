# 状态码

* <http://baike.baidu.com/view/1790469.htm>

| 值 | 说明 | 备注 |
| --- | --- | --- |
| 2开头 | 请求成功 |
| 4开头 | 请求错误 |
| 5、6 开头 | 服务器错误 |

| 值 | 提示信息 | 请求方式 | 说明 | 备注 |
| --- | --- | --- |
| 200 | OK | [GET] | 服务器成功返回用户请求的数据，该操作是幂等的（Idempotent) |
| 201 | Created | [POST/PUT] | 用户新建或修改数据成功 |
| 202 | Accepted | [*] | 表示一个请求已经进入后台排队（异步任务） |
| 204 | No Content | [DELETE] | 删除请求已经被执行，但是没有返回资源 |
| 400 | Bad Request | [POST/PUT] | 请求参数有误 |
| 401 | Unauthorized | [*] | 用户认证失败 |
| 403 | Forbidden | [*] | 用户得到授权,但禁止访问 | 无权限访问、请求次数过多等 |
| 404 | Not Found | [*] | 用户发出的请求针对的是不存在的记录，服务器没有进行操作 |  |
| 405 | Not Allowed | [*] | 当资源不允许使用某个 HTTP 方法时返回该错误码 | 返回一个 Allow 头,其中带有该资源的有效 HTTP 方法 |
| 406 | Not Acceptable | [GET] | 用户请求的格式不可得 | 比如用户请求JSON格式，但是只有XML格式 |
| 408 | Request Timeout | [*] | 请求超时 |  |
| 410 | Gone | [GET] | 用户请求的资源被永久删除，且不会再得到的 |  |
| 422 | Unprocessable Entity | [POST/PUT] | 请求格式正确，但是由于含有语义错误，无法响应 |
| 500 | Internal Server Error | [*] | 服务器发生错误 | 用户将无法判断发出的请求是否成功 |
| 503 | Service Unavailable | [*] | 由于临时的服务器维护或者过载，服务器当前无法处理请求 |

## 返回数据实例

```json
{
  "message": "unvalid username or password"
}
```
