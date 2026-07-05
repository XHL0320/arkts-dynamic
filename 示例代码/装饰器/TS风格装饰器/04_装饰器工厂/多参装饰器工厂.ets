/* 示例名称：多参装饰器工厂；覆盖点：string/number/boolean 参数；是否可运行：是；是否适合转 XTS：是。 */
function decFactory(name: string, id: number, enabled: boolean) { return (target: Object, key: string): void => { if (enabled) { print(name + id.toString() + key) } } }
class Demo { @decFactory("multi", 3, true) value: number = 3 }
function main(): void { let d: Demo = new Demo(); print(d.value) }