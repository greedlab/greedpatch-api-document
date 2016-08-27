# user

用户信息

## 结构

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| _id | string | ID | Mongo的 BSON ID 包含了 timestamp |  |
| email | string | 邮箱 |  | greedpatch@greedlab.com |
| password | string | 密码 | 加密后的 |  |
| status | int | 状态 | [详细说明](#status) | 0 |
| role | int | 角色 | [详细说明](#role) | 0 |
| validTokenTimestamp | int | 有效的 token 生成时间 | 只有 token 的生成时间大于或等于该值，token 才有效 | 0 |

### status

| value | 说明 |
| --- | --- |
| 0 | 激活（默认） |
| 1 | 禁用 |

### role

| value | 说明 |
| --- | --- |
| 0 | 普通用户（默认） |
| 1 | 管理员 |
