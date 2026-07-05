/*
 * 示例名称：属性装饰器与字段初始化
 * 覆盖点：field initializer + property decorator
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass/smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function dec(target: Object, key: string): void { print("decorate " + key) }
class Demo { @dec value: number = 10 + 5 }
function main(): void { let d: Demo = new Demo(); print(d.value) }