/* 示例名称：继承属性装饰器；覆盖点：decorated property in base class；是否可运行：是；是否适合转 XTS：是。 */
function dec(target: Object, key: string): void { print(key) }
class Base { @dec value: number = 6 }
class Derived extends Base {}
function main(): void { let d: Derived = new Derived(); print(d.value) }
