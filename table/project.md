# project

工程

## 结构

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| _id | string | ID |  |  |
| bundle_id | string | bundle id | unequal | com.greedlab.greedpatch |
| name | string | 工程名 |  |  |
| introduction | string | 介绍 |  |  |
| members | member array | 工程成员列表 | [详细说明](#member) |  |

### member

| key | 类型 | 说明 | 备注 |
| --- | --- | --- | --- |
| id | string | 成员 ID |  |
| email | string | 成员邮箱 |  |
| role | string | 成员角色 | 0：工程普通成员(默认)，1：工程管理员 |
