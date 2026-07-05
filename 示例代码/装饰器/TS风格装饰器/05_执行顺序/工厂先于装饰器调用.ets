/* 示例名称：工厂先于装饰器调用；覆盖点：factory body before returned decorator；是否可运行：是；是否适合转 XTS：是。 */
let order: string = ""
function decFactory() { order += "F"; return (target: Object, key: string): void => { order += "D" } }
class Demo { @decFactory() value: number = 1 }
function main(): void { let d: Demo = new Demo(); print(order); print(d.value) }