/* 示例名称：字段初始化与属性装饰器；覆盖点：field initializer + property decorator；是否可运行：是；是否适合转 XTS：是。 */
function dec(target: Object, key: string): void { print(key) }
class Demo { @dec value: number = 2 + 3 }
function main(): void { let d: Demo = new Demo(); print(d.value) }
