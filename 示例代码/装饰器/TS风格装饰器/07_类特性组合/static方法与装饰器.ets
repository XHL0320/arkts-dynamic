/* 示例名称：static 方法与装饰器；覆盖点：static method + decorator；是否可运行：是；是否适合转 XTS：是。 */
function dec(target: Object, key: string): void { print("static method " + key) }
class Demo { @dec static value(): number { return 2 } }
function main(): void { print(Demo.value()) }
