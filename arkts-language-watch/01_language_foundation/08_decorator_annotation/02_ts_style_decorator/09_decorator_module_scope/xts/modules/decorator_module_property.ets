// Helper module: basic property decorator function
// Coverage: DECORATOR-MODULE-0002, DECORATOR-MODULE-TD-0002
// Exported: propDec (property decorator function)
// No sendable, no ArkUI, no @interface

export let propDecLog: string = ""

export function propDec(target: Object, key: string): void {
  propDecLog += "propDec:" + key
}
