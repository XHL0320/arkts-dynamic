/* 示例名称：non-sendable 对照示例；覆盖点：非 sendable class + property decorator factory + IIFE；是否可运行：是；是否适合转 XTS：是，可作为对照。 */
let localVar: string = "local"
function decoratorFactory(v: string) { return (target: Object, key: string): void => { print(key + v) } }
class Demo { @decoratorFactory((() => { return localVar })()) prop: string = "333" }
function main(): void { let d: Demo = new Demo(); print(d.prop) }
