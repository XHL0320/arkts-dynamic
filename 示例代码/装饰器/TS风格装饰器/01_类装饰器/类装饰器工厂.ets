/*
 * 示例名称：类装饰器工厂
 * 覆盖点：class decorator factory
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass/smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function decFactory(name: string) { return (target: Object): void => { print("class factory: " + name) } }
@decFactory("Demo")
class Demo { value: number = 2 }
function main(): void { let d: Demo = new Demo(); print(d.value) }