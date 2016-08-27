# token

访问令牌

## 结构

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| _id | string | ID |  |  |
| name | string | 名称 | type 为 1 时才有 |  |
| userid | string | 用户 ID |  |  |
| token | string | token |  |  |
| timestamp | int | 生成时间 | | 0 |
| type | int | 类型 | [详细说明](#type) | 0 |

### type

| value | 说明 | 备注 |
| --- | --- | --- |
| 0 | 登录生成的（默认） | 有效期为 30 天 |
| 1 | 从个人设置界面生成的,客户端检查是否有 patch 用 | 永远有效 |
