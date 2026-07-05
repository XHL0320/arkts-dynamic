/* 示例名称：sendable 属性装饰器工厂；覆盖点：sendable class + property decorator factory；是否可运行：是；是否适合转 XTS：是，sendable-specific。 */
function decoratorFactory() { return (target: Object, key: string): void => { print(key) } }
class Demo { constructor() { "use sendable"; } @decoratorFactory() prop: string = "222" }
function main(): void { let d: Demo = new Demo(); print(d.prop) }
