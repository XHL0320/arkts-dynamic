/* 示例名称：static 属性与装饰器；覆盖点：static property + decorator；是否可运行：是；是否适合转 XTS：是。 */
function dec(target: Object, key: string): void { print("static prop " + key) }
class Demo { @dec static value: number = 1 }
function main(): void { print(Demo.value) }
