/* 示例名称：构造函数与类装饰器；覆盖点：constructor + class decorator；是否可运行：是；是否适合转 XTS：是。 */
function dec(target: Object): void { print("class") }
@dec
class Demo { value: number; constructor(value: number) { this.value = value } }
function main(): void { let d: Demo = new Demo(4); print(d.value) }
