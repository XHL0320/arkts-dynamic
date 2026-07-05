/*
 * 示例名称：属性装饰器工厂
 * 覆盖点：property decorator factory
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */
function propFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @propFactory("field") value: number = 3 }
function main(): void { let d: Demo = new Demo(); print(d.value) }