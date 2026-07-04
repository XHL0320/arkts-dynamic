// Helper module: basic method decorator function (2-param form)
// Coverage: DECORATOR-MODULE-0003, DECORATOR-MODULE-TD-0003
// Exported: methodDec (method decorator function, 2-param: target, key)
// descriptor/equivalent structure pending — uses 2-param form only
// No sendable, no ArkUI, no @interface

export let methodDecLog: string = ""

export function methodDec(target: Object, key: string): void {
  methodDecLog += "methodDec:" + key
}
