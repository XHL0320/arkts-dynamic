/* 示例名称：导出被装饰类；覆盖点：export decorated class；是否可运行：是；是否适合转 XTS：是，可转 integration。 */
function classDec(target: Object): void { print("export decorated class") }
@classDec
export class ExportedDecoratedDemo { value: number = 5 }
function main(): void { let d: ExportedDecoratedDemo = new ExportedDecoratedDemo(); print(d.value) }