// Helper module: basic class decorator function
// Coverage: DECORATOR-MODULE-0001, DECORATOR-MODULE-TD-0001
// Exported: classDec (class decorator function)
// No sendable, no ArkUI, no @interface

export let classDecLog: string = ""

export function classDec(target: Object): void {
  classDecLog += "classDec"
}
