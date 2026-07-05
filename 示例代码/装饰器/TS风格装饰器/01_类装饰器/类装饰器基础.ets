/*
 * 示例名称：类装饰器基础
 * 覆盖点：class decorator identifier form
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function dec(target: Object): void { print("decorate class") }
@dec
class Demo { value: number = 1 }
function main(): void { let d: Demo = new Demo(); print(d.value) }