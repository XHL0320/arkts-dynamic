// Helper module: property decorator factory
// Coverage: DECORATOR-MODULE-0020, DECORATOR-MODULE-TD-0020
// Exported: propFactory (property decorator factory)
// No sendable, no ArkUI, no @interface

export let propFactoryLog: string = ""

export function propFactory(tag: string): (target: Object, key: string) => void {
  propFactoryLog += "propFactory:" + tag
  return function(target: Object, key: string): void {
    propFactoryLog += "propFactoryDec:" + tag + ":" + key
  }
}
