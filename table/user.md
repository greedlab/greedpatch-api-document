# user

用户信息

## 结构

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| id | string | ID |  |  |
| email | string | 邮箱 |  | greedpatch@greedlab.com |
| status | int | 状态 | [详细说明](#status) | 0 |
| role | int | 角色 | [详细说明](#role) | 0 |
| password | string | 密码 | 加密后的 |  |
| timestamp | string | 创建时间戳 | 精确到秒 | 1471499261 |

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
