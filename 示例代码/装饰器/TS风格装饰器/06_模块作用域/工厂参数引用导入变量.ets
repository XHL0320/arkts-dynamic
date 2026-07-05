/* 示例名称：工厂参数引用导入变量；覆盖点：factory argument imported binding；是否可运行：是；是否适合转 XTS：是。 */
import { sharedName } from "./modules/共享变量模块"
function decFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @decFactory(sharedName) value: number = 3 }
function main(): void { let d: Demo = new Demo(); print(d.value) }