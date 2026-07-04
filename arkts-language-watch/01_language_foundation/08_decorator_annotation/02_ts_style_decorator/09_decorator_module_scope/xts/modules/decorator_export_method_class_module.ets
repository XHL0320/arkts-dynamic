// Helper module: exported decorated class (method decorator, 2-param form)
// Coverage: DECORATOR-MODULE-0077, DECORATOR-MODULE-TD-0077
// Exported: DecoratedMethodA (class with method decorator)
// descriptor/equivalent structure pending — uses 2-param form only
// No sendable, no ArkUI, no @interface

let methodDecLogLocal: string = ""

function localMethodDec(target: Object, key: string): void {
  methodDecLogLocal += "localMethodDec:" + key
}

export class DecoratedMethodA {
  value: number = 42
  @localMethodDec
  greet(): string {
    return "hello"
  }
}
