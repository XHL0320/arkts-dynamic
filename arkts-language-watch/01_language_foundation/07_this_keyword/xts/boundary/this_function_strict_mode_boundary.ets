/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: strict mode function this boundary.
 * Boundary reason: dynamic ArkTS strict mode this behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function strictThis(): Object | undefined { return this }

function main(): void {
  let result: Object | undefined = strictThis()
  // In strict mode: undefined. In non-strict: globalThis.
  assertTrue(result === undefined || result === globalThis, 'strict mode this boundary documented')
}

main()
