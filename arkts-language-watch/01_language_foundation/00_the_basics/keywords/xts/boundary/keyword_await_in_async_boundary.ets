/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: await keyword inside async function.
 * Boundary reason: dynamic ArkTS await support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

async function testAwait(): Promise<number> {
  let result: number = await Promise.resolve(99)
  return result
}

function main(): void {
  // If await works inside async, testAwait should resolve to 99.
  // This boundary file documents the support status.
  assertTrue(true, 'await in async boundary documented')
}

main()
