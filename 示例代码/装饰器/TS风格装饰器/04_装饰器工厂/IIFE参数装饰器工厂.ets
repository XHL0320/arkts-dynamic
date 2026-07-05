/* 示例名称：IIFE 参数装饰器工厂；覆盖点：factory 参数 IIFE；是否可运行：是；是否适合转 XTS：是。 */
function decFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @decFactory((() => { return "iife" })()) value: number = 4 }
function main(): void { let d: Demo = new Demo(); print(d.value) }