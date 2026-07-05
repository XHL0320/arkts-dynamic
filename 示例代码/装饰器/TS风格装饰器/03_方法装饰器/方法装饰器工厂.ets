/*
 * 示例名称：方法装饰器工厂
 * 覆盖点：method decorator factory
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function methodFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @methodFactory("method") value(): number { return 3 } }
function main(): void { let d: Demo = new Demo(); print(d.value()) }