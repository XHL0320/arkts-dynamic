/*
 * 示例名称：属性装饰器工厂参数
 * 覆盖点：literal 参数、函数返回值参数、IIFE 参数
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass/smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function getName(): string { return "demo" }
function propDecFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo {
  @propDecFactory("literal") a: number = 1
  @propDecFactory(getName()) b: number = 2
  @propDecFactory((() => { return "iife" })()) c: number = 3
}
function main(): void { let d: Demo = new Demo(); print(d.a); print(d.b); print(d.c) }