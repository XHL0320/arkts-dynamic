// Helper module: exported decorated class (property decorator)
// Coverage: DECORATOR-MODULE-0076, DECORATOR-MODULE-TD-0076
// Exported: DecoratedPropA (class with property decorator)
// No sendable, no ArkUI, no @interface

let propDecLogLocal: string = ""

function localPropDec(target: Object, key: string): void {
  propDecLogLocal += "localPropDec:" + key
}

export class DecoratedPropA {
  @localPropDec
  prop: string = "hello"
  value: number = 42
}
