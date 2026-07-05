/*
 * 示例名称：无参装饰器工厂
 * 覆盖点：factory 返回 decorator function
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function decFactory() { return (target: Object, key: string): void => { print("decorate " + key) } }
class Demo { @decFactory() value: number = 1 }
function main(): void { let d: Demo = new Demo(); print(d.value) }