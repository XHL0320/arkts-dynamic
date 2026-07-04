// Helper module: method decorator factory (2-param form)
// Coverage: DECORATOR-MODULE-0021, DECORATOR-MODULE-TD-0021
// Exported: methodFactory (method decorator factory, 2-param returned decorator)
// descriptor/equivalent structure pending — uses 2-param form only
// No sendable, no ArkUI, no @interface

export let methodFactoryLog: string = ""

export function methodFactory(tag: string): (target: Object, key: string) => void {
  methodFactoryLog += "methodFactory:" + tag
  return function(target: Object, key: string): void {
    methodFactoryLog += "methodFactoryDec:" + tag + ":" + key
  }
}
