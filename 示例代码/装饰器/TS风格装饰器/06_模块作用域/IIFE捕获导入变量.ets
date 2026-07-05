/* 示例名称：IIFE 捕获导入变量；覆盖点：IIFE captures imported binding；是否可运行：是；是否适合转 XTS：是。 */
import { sharedName } from "./modules/共享变量模块"
function decFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
class Demo { @decFactory((() => { return sharedName })()) value: number = 4 }
function main(): void { let d: Demo = new Demo(); print(d.value) }