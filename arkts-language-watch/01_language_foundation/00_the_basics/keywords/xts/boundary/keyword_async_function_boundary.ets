/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: async keyword as function modifier.
 * Boundary reason: dynamic ArkTS async/await support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If async is supported, this function should compile and return a Promise-like.
// If not supported, this file should fail to compile.
async function asyncFunc(): Promise<number> {
  return 42
}

function main(): void {
  // If async works, calling asyncFunc should return a resolved promise.
  // This boundary file documents the support status.
  assertTrue(true, 'async keyword boundary documented')
}

main()
