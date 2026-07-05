/* 示例名称：单参装饰器工厂；覆盖点：string literal 参数；是否可运行：是；是否适合转 XTS：是。 */
function decFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @decFactory("one") value: number = 2 }
function main(): void { let d: Demo = new Demo(); print(d.value) }