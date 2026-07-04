// Helper module: class decorator factory with module-level variable capture
// Coverage: DECORATOR-MODULE-0059, DECORATOR-MODULE-TD-0059
// Exported: classFactoryWithCapture (class decorator factory that captures module variable)
// No sendable, no ArkUI, no @interface

export let moduleVar: string = "captured"

export let classFactoryCaptureLog: string = ""

export function classFactoryWithCapture(tag: string): (target: Object) => void {
  classFactoryCaptureLog += "factory:" + tag + ":" + moduleVar
  return function(target: Object): void {
    classFactoryCaptureLog += "dec:" + tag + ":" + moduleVar
  }
}
