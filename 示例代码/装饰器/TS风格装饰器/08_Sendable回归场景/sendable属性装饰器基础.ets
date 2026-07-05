/* 示例名称：sendable 属性装饰器基础；覆盖点：sendable class + property decorator；是否可运行：是；是否适合转 XTS：是，sendable-specific。 */
function dec(target: Object, key: string): void { print(key) }
class Demo { constructor() { "use sendable"; } @dec prop: string = "111" }
function main(): void { let d: Demo = new Demo(); print(d.prop) }
