# Module Spec Summary

## 1. Feature Scope

模块体系看护覆盖以下方面：

- ES module 基础语法（import/export）
- named export / default export / export list / export rename
- named import / default import / namespace import / import rename / side-effect import
- re-export / export star / export star as namespace
- live binding / module scope / circular dependency
- dynamic import / top-level await 边界
- type-only import/export 边界
- duplicate export / missing export / ambiguous export
- module path resolution 边界
- TypeScript / ArkTS module 兼容边界
- ArkTS 动态与静态 ArkTS 模块语义差异

**关键认知**：ES module 是 ECMAScript 原生语言能力，有真实运行时语义（模块链接、执行、live binding）。TypeScript/ArkTS 的 type-only import/export 属于类型层兼容边界。

## 2. ECMAScript Module Runtime Model

ES module 运行时模型（ECMA-262 §16）：

1. **Parse**：解析所有模块文件
2. **Instantiate (Link)**：创建模块环境记录，建立导入导出绑定（不执行代码）
3. **Evaluate**：按依赖顺序执行模块代码
4. **Live Binding**：导出的绑定是 live 的——导出侧修改后导入侧可见

模块代码自动为严格模式。模块作用域隔离，`var` 不污染全局。

## 3. TypeScript / ArkTS Module Notes

TypeScript/ArkTS 额外模块能力：
- `import type { T }` / `export type { T }`：类型层导入导出，运行时擦除
- interface/type/generic 导出：类型层导出，运行时无对象
- namespace import：`import * as ns` 可包含类型信息
- 实体导出与类型导出同名：`export { Foo }` 可以同时是值和类型

鸿蒙动态 ArkTS 需要确认的差异点：
1. type-only import/export 是否支持
2. interface/type 导出是否在运行时擦除
3. namespace import 是否包含类型信息
4. dynamic import 是否支持
5. top-level await 是否支持
6. live binding 是否完整实现
7. 循环依赖初始化行为
8. 模块路径解析规则

## 4. Module Scope

- 每个模块有独立的模块作用域
- `var` 声明不泄露到全局（不像脚本模式）
- 模块自动为严格模式
- 顶层 `this` 为 `undefined`（模块模式）

## 5. Named Export

```typescript
export const x = 1
export function f() {}
export class C {}
export { existingName }
export { existingName as exportedName }
```

- 声明前加 `export` 关键字
- export list 形式 `export { a, b }`
- rename 形式 `export { a as b }`

## 6. Default Export

```typescript
export default function() {}
export default class {}
export default 42
export default expression
```

- 每个模块最多一个 default export
- default export 可以是任何表达式
- import 时不需要花括号

## 7. Export List and Rename

```typescript
export { foo, bar }
export { foo as renamedFoo }
export { foo as default }
```

- export list 导出已有声明
- rename 改变导出名
- `as default` 将 named 导出改为 default

## 8. Named Import

```typescript
import { foo } from './module'
import { foo as renamedFoo } from './module'
import { foo, bar } from './module'
```

- 花括号导入 named export
- rename 改变本地绑定名
- 导入的是 live binding

## 9. Default Import

```typescript
import defaultExport from './module'
import defaultExport, { namedExport } from './module'
```

- 不需要花括号
- 可以同时导入 default 和 named

## 10. Namespace Import

```typescript
import * as ns from './module'
```

- 将所有 named export 作为命名空间对象的属性
- namespace 对象是只读的
- namespace 对象包含 default 作为 `ns.default`

## 11. Side-effect Import

```typescript
import './module'
```

- 只执行模块代码，不导入绑定
- 用于副作用（polyfill、CSS 等）

## 12. Re-export

```typescript
export { foo } from './module'
export { foo as renamedFoo } from './module'
export * from './module'
```

- 从另一个模块导出，不创建本地绑定
- rename re-export

## 13. Export Star

```typescript
export * from './module'
```

- 将另一个模块的所有 named export 转发
- 不转发 default export
- 冲突时后导出的覆盖先导出的（或报错）

## 14. Export Star As Namespace

```typescript
export * as ns from './module'
```

- ES2020 特性
- 将另一个模块的所有 named export 作为命名空间对象导出

## 15. Live Binding

- 导出的绑定是 live 的
- 导出侧修改值后，导入侧可见新值
- `export let` / `export var` 的值可以变化
- `export const` 的引用不可变但属性可变
- `export function` / `export class` 绑定不可重新赋值

## 16. Circular Dependency

- 模块 A import B，B import A 形成循环
- 链接阶段正常完成（绑定创建）
- 执行阶段：先执行的模块访问后执行模块的导出时，可能得到 undefined
- 循环依赖是合法的但需要小心处理

## 17. Dynamic Import Boundary

```typescript
import('./module').then(module => { /* ... */ })
```

- 返回 Promise
- 模块按需加载
- ES2020 特性
- 鸿蒙动态 ArkTS 是否支持待确认

## 18. Top-level Await Boundary

```typescript
const data = await fetch('/data')
```

- 模块顶层可以使用 await
- ES2022 特性
- 只在 module 上下文中有效
- 鸿蒙动态 ArkTS 是否支持待确认

## 19. Type-only Import / Export Boundary

```typescript
import type { Interface } from './module'
export type { TypeAlias }
import type T from './module'
```

- TypeScript 特性
- 运行时完全擦除（不产生 import 代码）
- 用于避免循环依赖中的运行时导入
- 鸿蒙动态 ArkTS 是否支持待确认

## 20. Duplicate Export / Import Conflict

- 同名 export 重复声明：SyntaxError
- `export *` 冲突：ambiguous export
- 同名 import：SyntaxError
- default export 重复：SyntaxError

## 21. Module Path Resolution Boundary

- 相对路径：`./module` / `../module`
- 绝对路径：`/path/to/module`
- bare specifier：`package-name`
- 文件扩展名：`.js` / `.ts` / `.ets`
- 鸿蒙动态 ArkTS 路径解析规则待确认

## 22. Runtime Exception Conditions

| 条件 | 异常类型 | 说明 |
|---|---|---|
| 导入不存在的 named export | SyntaxError（链接阶段） | "The requested module does not provide an export named 'x'" |
| 访问循环依赖中未初始化的导出 | undefined（不抛异常） | 返回 undefined 而非报错 |
| namespace 对象属性修改 | TypeError（严格模式） | namespace 对象只读 |

## 23. Compile Negative Conditions

| 条件 | ES 规范错误类型 | ArkTS 动态预期 |
|---|---|---|
| 重复 default export | SyntaxError | SyntaxError / compile error |
| 重复 named export | SyntaxError | SyntaxError / compile error |
| 同名 import | SyntaxError | SyntaxError / compile error |
| import/export 在非模块顶层 | SyntaxError | SyntaxError / compile error |
| ambiguous export（export * 冲突） | SyntaxError | SyntaxError / compile error |

## 24. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| MOD-PQ-P0-001 | named import/export 是否完整支持 | compiler / runtime | P0 |
| MOD-PQ-P0-002 | default import/export 是否支持 | compiler / runtime | P0 |
| MOD-PQ-P0-003 | live binding 是否完整实现 | runtime smoke | P0 |
| MOD-PQ-P0-004 | 模块作用域隔离是否正确 | runtime smoke | P0 |
| MOD-PQ-P1-001 | namespace import 是否支持 | compiler / runtime | P1 |
| MOD-PQ-P1-002 | re-export / export star 是否支持 | compiler / runtime | P1 |
| MOD-PQ-P1-003 | 循环依赖初始化行为 | runtime | P1 |
| MOD-PQ-P1-004 | type-only import/export 是否支持 | compiler | P1 |
| MOD-PQ-P2-001 | dynamic import 是否支持 | compiler / runtime | P2 |
| MOD-PQ-P2-002 | top-level await 是否支持 | compiler / runtime | P2 |
| MOD-PQ-P2-003 | 模块路径解析规则 | compiler | P2 |