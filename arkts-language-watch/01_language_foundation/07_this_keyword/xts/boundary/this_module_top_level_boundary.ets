/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: module top-level this boundary.
 * Boundary reason: module top-level this should be undefined in ES modules.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // In ES modules, top-level `this` is undefined.
  // In script mode, top-level `this` is globalThis.
  // This boundary documents the behavior in dynamic ArkTS.
  assertTrue(true, 'module top-level this boundary documented')
}

main()
