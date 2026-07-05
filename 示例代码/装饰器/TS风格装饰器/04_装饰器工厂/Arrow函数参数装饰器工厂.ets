/* 示例名称：Arrow 函数参数装饰器工厂；覆盖点：factory 参数为 arrow function；是否可运行：是；是否适合转 XTS：是。 */
function decFactory(cb: () => string) { let name: string = cb(); return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @decFactory(() => "arrow") value: number = 5 }
function main(): void { let d: Demo = new Demo(); print(d.value) }