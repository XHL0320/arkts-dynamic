/*
 * 示例名称：多个属性装饰器
 * 覆盖点：same property multiple decorators
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 smoke；固定顺序另行确认
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function decA(target: Object, key: string): void { print("A:" + key) }
function decB(target: Object, key: string): void { print("B:" + key) }
class Demo { @decA @decB value: number = 6 }
function main(): void { let d: Demo = new Demo(); print(d.value) }