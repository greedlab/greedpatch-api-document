# setPwdToken

设置密码的 token

## 结构

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| _id | string | ID |  |  |
| userid | string |  用户 ID |  |  |
| iat | token 发布时间 | 单位/毫秒 |
| exp | token 有效期 | 单位/毫秒 |
| status | int |  状态 | [详细说明](#status) | 0 |

### status

| value | 说明 | 备注 |
| --- | --- | --- |
| 0 | 有效的（默认） |  |
| 1 | 无效的 |  |
