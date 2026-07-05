/* 示例名称：嵌套调用装饰器工厂；覆盖点：nested call argument；是否可运行：是；是否适合转 XTS：是。 */
function prefix(): string { return "nested" }
function nameOf(v: string): string { return v + "Name" }
function decFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @decFactory(nameOf(prefix())) value: number = 6 }
function main(): void { let d: Demo = new Demo(); print(d.value) }