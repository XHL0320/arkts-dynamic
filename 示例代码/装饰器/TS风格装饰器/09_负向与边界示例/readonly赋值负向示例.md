# readonly赋值负向示例

## 错误示例

``ts
class Demo {
  readonly value: number = 1
  update(): void { this.value = 2 }
}
``

## 预期

编译失败。

## 原因

该示例展示 decorator 或 class feature 相关的 checker/parser 负向场景。

## 测试设计建议

适合转为 fail_compile 用例，不适合放入 ohosTest 正向执行。
