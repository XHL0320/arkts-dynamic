# 异常代码示例全集

本目录收录 ECMAScript Runtime Error Objects / Native Error 类型的 TS、JS 示例代码，供测试人员查看、迁移和改造成 ArkTS/XTS 测试用例。

当前范围只包含运行时异常相关示例，不包含 TypeScript 编译期 type error，也不包含 ArkUI、UI、Ability、状态管理相关内容。

目录结构按错误类型直接归档示例代码：

- `*_constructor.pass.ts/js`：构造器、prototype、name/message、instanceof、toString 等正向行为示例。
- `*_runtime_throw.fail.ts/js`：典型运行时抛出场景示例。

已覆盖错误类型：

- error
- eval_error
- range_error
- reference_error
- syntax_error
- type_error
- uri_error
- aggregate_error
- suppressed_error

## TypeError 语义场景示例

`error_objects/type_error/` 已同步 TypeError 全量语义场景示例。根目录保留 TypeError 错误对象基础示例；各编号子目录直接存放对应语义场景的 TS/JS 示例文件，不包含 `xts/pass/fail_runtime` 层级。
