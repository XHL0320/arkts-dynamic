/* 示例名称：readonly 属性与装饰器；覆盖点：readonly property + decorator；是否可运行：是；是否适合转 XTS：是。 */
function dec(target: Object, key: string): void { print("readonly " + key) }
class Demo { @dec readonly value: number = 3 }
function main(): void { let d: Demo = new Demo(); print(d.value) }
