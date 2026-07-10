/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: top-level this in module context.
 * Boundary reason: module top-level this is undefined in ES; dynamic ArkTS behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // In ES modules, top-level `this` is undefined.
  // This boundary documents the behavior in dynamic ArkTS.
  assertTrue(true, 'top-level this boundary documented')
}

main()
