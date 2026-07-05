/*
 * 示例名称：静态方法装饰器
 * 覆盖点：static method decorator
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass/smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function dec(target: Object, key: string): void { print("decorate static method: " + key) }
class Demo { @dec static version(): number { return 1 } }
function main(): void { print(Demo.version()) }