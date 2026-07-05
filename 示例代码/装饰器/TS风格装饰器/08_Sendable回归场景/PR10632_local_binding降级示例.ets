/* 示例名称：PR10632 local binding 降级示例；覆盖点：sendable + property decorator factory + IIFE local binding；是否可运行：是；是否适合转 XTS：可转 smoke，不是完整 imported-binding 复现。 */
let localVar: string = "local"
function decoratorFactory(v: string) { return (target: Object, key: string): void => { print(key + v) } }
class Demo { constructor() { "use sendable"; } @decoratorFactory((() => { return localVar })()) prop: string = "111" }
function main(): void { let d: Demo = new Demo(); print(d.prop) }
