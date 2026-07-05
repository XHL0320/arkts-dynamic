/* 示例名称：导入属性装饰器；覆盖点：imported property decorator；是否可运行：是；是否适合转 XTS：是。 */
import { importedPropDec } from "./modules/属性装饰器模块"
class Demo { @importedPropDec value: number = 1 }
function main(): void { let d: Demo = new Demo(); print(d.value) }