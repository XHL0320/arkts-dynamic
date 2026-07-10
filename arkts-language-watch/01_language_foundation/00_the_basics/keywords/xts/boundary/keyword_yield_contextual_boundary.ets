/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: yield keyword as contextual keyword in generator.
 * Boundary reason: dynamic ArkTS generator/yield support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If yield is supported, this generator function should compile.
// If not supported, this file should fail to compile.
function* gen(): Generator<number> {
  yield 1
  yield 2
  yield 3
}

function main(): void {
  // This boundary file documents yield support status.
  assertTrue(true, 'yield contextual keyword boundary documented')
}

main()
