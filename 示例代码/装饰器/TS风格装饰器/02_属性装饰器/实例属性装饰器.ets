/*
 * 示例名称：实例属性装饰器
 * 覆盖点：instance property decorator
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function propDec(target: Object, key: string): void { print("decorate property: " + key) }
class Demo { @propDec value: number = 1 }
function main(): void { let d: Demo = new Demo(); print(d.value) }