# Function Test Design

## 1. Positive Runtime Cases

- 函数声明可在声明前调用，验证 hoisting。
- 函数表达式仅在赋值后可调用，验证 no hoisting。
- 默认参数在参数缺省或传入 `undefined` 时生效。
- rest 参数收集剩余实参，并与 `arguments` 保持差异。
- 普通函数通过 `call` / `apply` / `bind` 改变 `this`。
- 箭头函数保持词法 `this`，作为 callback 时不重新绑定。
- 闭包捕获外层变量，并在外层函数返回后仍可读取。
- 函数可作为值、参数和返回值传递。

## 2. Syntax Error / Compile Negative Cases

- 非法参数列表，如 rest 参数后继续声明普通参数。
- 默认参数语法错误。
- 函数声明缺少名称。
- 非法 return 位置。
- TS overload signature 不被动态 ArkTS 支持时应 fail_compile。
- 重复参数在严格模式或动态 ArkTS 限制下的边界。

## 3. Runtime Exception Cases

- 调用非函数值应抛 TypeError。
- callback 内抛出的异常应向调用方传播。
- 引用未初始化或不存在的函数绑定应抛 ReferenceError。
- `this` 为 `undefined` / `null` 时访问属性的边界。
- `apply` 参数不是数组或类数组时的行为待确认。

## 4. Boundary Cases

- 块级函数声明提升行为。
- `arguments` 与形参别名关系。
- `function.length` 对默认参数、rest 参数的影响。
- `Function.prototype.bind` 后的 `name` / `length`。
- overload signature 在动态 ArkTS 中只做兼容/限制验证。

## 5. Cross Feature Cases

- 函数嵌套闭包与箭头函数 this。
- 默认参数引用前序参数。
- rest 参数与普通参数混合。
- `try/catch/finally` 中 return 与 throw 组合。
- 函数作为对象方法调用与普通调用的 this 差异。

## 6. Cross Module Cases

- 导入函数声明并调用。
- 导入函数表达式绑定并作为 callback。
- 导出返回闭包的函数。
- 跨模块传递函数值并验证 `this` 绑定边界。

## 7. Regression Cases

- 历史实现差异：函数提升、arguments、this 绑定、闭包捕获。
- 动态 ArkTS 与 test262 结果不一致时建立 regression。
- TypeScript 兼容语法被误判为静态 checker 行为时建立 boundary。

## 8. Test262 Mapping Direction

优先映射 ECMAScript 2022 中 function declaration、formal parameters、arrow function、call expression、return statement、lexical environment 相关 test262。ECMAScript 2023 增量只在确认关联函数行为后补充。

## 9. XTS Migration Strategy

Stage 1 优先迁移 P0/P1 正向 runtime smoke 与明确 fail_compile。边界项先保留设计，不放入正向运行目录；fail_runtime 单独验证，不与 pass 混合。
