/*
 * 示例名称：类装饰器与构造函数
 * 覆盖点：class decorator + constructor parameter
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function dec(target: Object): void { print("class decorator") }
@dec
class Demo { value: number; constructor(value: number) { this.value = value } }
function main(): void { let d: Demo = new Demo(4); print(d.value) }