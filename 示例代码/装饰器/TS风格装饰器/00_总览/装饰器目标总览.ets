/*
 * 示例名称：装饰器目标总览
 * 覆盖点：class decorator、property decorator、method decorator、decorator factory
 * 是否可运行：是
 * 是否适合转 XTS：是，可转 pass/smoke
 * 注意：本示例不是 ArkUI decorator，也不是 ArkTS annotation。
 */

function classDec(target: Object): void {
  print("class decorator")
}

function propDec(target: Object, key: string): void {
  print("property decorator: " + key)
}

function methodDec(target: Object, key: string): void {
  print("method decorator: " + key)
}

function factoryDec(name: string) {
  return (target: Object, key: string): void => {
    print("factory decorator: " + name + ", key=" + key)
  }
}

@classDec
class Demo {
  @propDec
  value: number = 1

  @methodDec
  getValue(): number {
    return this.value
  }

  @factoryDec("factory")
  other: number = 2
}

function main(): void {
  let d: Demo = new Demo()
  print(d.getValue())
}