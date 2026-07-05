/*
 * 示例名称：静态属性装饰器
 * 覆盖点：static property decorator
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass/smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function propDec(target: Object, key: string): void { print("decorate static property: " + key) }
class Demo { @propDec static value: number = 2 }
function main(): void { print(Demo.value) }