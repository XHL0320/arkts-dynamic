/* 示例名称：多个工厂装饰器顺序；覆盖点：multiple factories and returned decorators；是否可运行：是；是否适合转 XTS：是。 */
let order: string = ""
function factory(name: string) { order += "F" + name; return (target: Object, key: string): void => { order += "D" + name } }
class Demo { @factory("A") @factory("B") value: number = 3 }
function main(): void { let d: Demo = new Demo(); print(order); print(d.value) }