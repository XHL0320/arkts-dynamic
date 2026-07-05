/*
 * 示例名称：实例方法装饰器
 * 覆盖点：instance method decorator
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function dec(target: Object, key: string): void { print("decorate method: " + key) }
class Demo { @dec add(a: number, b: number): number { return a + b } }
function main(): void { let d: Demo = new Demo(); print(d.add(1, 2)) }