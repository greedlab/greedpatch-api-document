# 状态码

* <http://baike.baidu.com/view/1790469.htm>

| 值 | 提示信息 | 说明 | 备注 |
| --- | --- | --- |
| 2开关 | 请求成功 |
| 200 | OK | 成功 |
| 202 | Accepted | 删除请求已经接受，但没有被立即执行（资源也许已经被转移到了待删除区域 |
| 204 | No Content | 删除请求已经被执行，但是没有返回资源（也许是请求删除不存在的资源造成的 |
| 4开关 | 请求错误 |
| 400 | Bad Request | 请求参数有误 |
| 401 | Unauthorized | 用户认证失败 |
| 403 | Forbidden | 禁止访问 | 无权限访问、请求次数过多等 |
| 404 | Not Found | 接口不存在 |  |
| 408 | Request Timeout | 请求超时 |  |
| 422 | Unprocessable Entity | 请求格式正确，但是由于含有语义错误，无法响应 |
| 5、6 开关 | 服务器错误 |
| 500 | Internal Server Error | 服务器错误 |
| 503 | Service Unavailable | 由于临时的服务器维护或者过载，服务器当前无法处理请求 |

## 返回数据实例

```json
{
  "message": "unvalid username or password"
}
```
