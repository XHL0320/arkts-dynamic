/*
 * 示例名称：多个类装饰器
 * 覆盖点：same class multiple decorators
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 smoke；固定顺序另行确认
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function decA(target: Object): void { print("A") }
function decB(target: Object): void { print("B") }
@decA
@decB
class Demo { value: number = 3 }
function main(): void { let d: Demo = new Demo(); print(d.value) }