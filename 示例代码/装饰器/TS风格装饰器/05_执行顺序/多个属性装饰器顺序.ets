/* 示例名称：多个属性装饰器顺序；覆盖点：multiple decorators same target；是否可运行：是；是否适合转 XTS：是，固定顺序另行确认。 */
let order: string = ""
function decA(target: Object, key: string): void { order += "A" }
function decB(target: Object, key: string): void { order += "B" }
class Demo { @decA @decB value: number = 2 }
function main(): void { let d: Demo = new Demo(); print(order); print(d.value) }