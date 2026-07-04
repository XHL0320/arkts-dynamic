// Helper module: decorator factory (class decorator factory)
// Coverage: DECORATOR-MODULE-0019, DECORATOR-MODULE-TD-0019
// Exported: classFactory (class decorator factory)
// No sendable, no ArkUI, no @interface

export let classFactoryLog: string = ""

export function classFactory(tag: string): (target: Object) => void {
  classFactoryLog += "classFactory:" + tag
  return function(target: Object): void {
    classFactoryLog += "classFactoryDec:" + tag
  }
}
