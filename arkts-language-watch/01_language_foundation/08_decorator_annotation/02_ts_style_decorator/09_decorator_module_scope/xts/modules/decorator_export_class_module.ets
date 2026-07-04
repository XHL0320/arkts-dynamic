// Helper module: exported decorated class (class decorator)
// Coverage: DECORATOR-MODULE-0075, DECORATOR-MODULE-TD-0075
// Exported: DecoratedA (class with class decorator)
// No sendable, no ArkUI, no @interface

let classDecLogLocal: string = ""

function localClassDec(target: Object): void {
  classDecLogLocal += "localClassDec"
}

@localClassDec
export class DecoratedA {
  value: number = 42
}
