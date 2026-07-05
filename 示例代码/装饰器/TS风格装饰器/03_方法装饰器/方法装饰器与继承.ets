/*
 * 示例名称：方法装饰器与继承
 * 覆盖点：decorated method in base class, derived class call
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 integration smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function dec(target: Object, key: string): void { print("decorate " + key) }
class Base { @dec value(): number { return 5 } }
class Derived extends Base {}
function main(): void { let d: Derived = new Derived(); print(d.value()) }