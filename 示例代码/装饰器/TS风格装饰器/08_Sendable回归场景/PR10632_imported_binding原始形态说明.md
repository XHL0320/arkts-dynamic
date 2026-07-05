# PR10632 imported binding 原始形态说明

完整原始风险包含：

```ts
import { moduleVar } from "./module"

function decoratorFactory(v: string) {
  return (target: Object, key: string): void => {}
}

class Demo {
  constructor() {
    "use sendable";
  }

  @decoratorFactory((() => { return moduleVar })())
  prop: string = "111"
}
```

该形态涉及 imported binding、sendable class、property decorator、factory 参数 IIFE、transform/lowering、binder context、bytecode/codegen。这里仅说明风险，不生成真实 bytecode expected。