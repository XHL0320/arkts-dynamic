/* 示例名称：类属性方法混合装饰器顺序；覆盖点：class/property/method mixed decorators；是否可运行：是；是否适合转 XTS：是。 */
let count: number = 0
function classDec(target: Object): void { count++ }
function propDec(target: Object, key: string): void { count++ }
function methodDec(target: Object, key: string): void { count++ }
@classDec
class Demo { @propDec value: number = 4; @methodDec getValue(): number { return this.value } }
function main(): void { let d: Demo = new Demo(); print(d.getValue()); print(count) }