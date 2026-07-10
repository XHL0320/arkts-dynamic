/*
 * Statement Stage 1
 * Boundary / pending confirmation.
 * Test point: debugger statement in non-debug environment.
 * Expected in ES: debugger is a no-op without a debugger attached.
 * Boundary reason: dynamic ArkTS debugger statement runtime behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 0
  debugger
  x = 5
  assertTrue(x === 5, 'debugger statement should not affect control flow')
}

main()
