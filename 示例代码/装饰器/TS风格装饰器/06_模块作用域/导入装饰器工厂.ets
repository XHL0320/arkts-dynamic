/* 示例名称：导入装饰器工厂；覆盖点：imported decorator factory；是否可运行：是；是否适合转 XTS：是。 */
import { importedFactory } from "./modules/装饰器工厂模块"
class Demo { @importedFactory("factory") value: number = 2 }
function main(): void { let d: Demo = new Demo(); print(d.value) }