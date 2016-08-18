# token

访问令牌

## 结构

| key | 类型 | 说明 | 备注 | 例子 |
| --- | --- | --- | --- | --- |
| _id | string | ID |  |  |
| name | string | 名称 | type 为 1 时才有 |  |
| token | string | token |  |  |
| type | int | 类型 | [详细说明](#type) | 0 |
| timestamp | string | 添加时间戳 | 精确到秒 | 1471499261 |

### type

| value | 说明 |
| --- | --- |
| 0 | 登录生成的（默认） |
| 1 | 从个人设置界面生成的 |
| 2 | 重置密码生成的 |
