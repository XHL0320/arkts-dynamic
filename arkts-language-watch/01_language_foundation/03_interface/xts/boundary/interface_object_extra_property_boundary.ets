/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: object literal with extra property (excess property).
 * Boundary reason: dynamic ArkTS excess property checking needs confirmation.
 * In TypeScript, direct assignment with excess properties is a compile error.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Exact {
  x: number
}

// In TypeScript, { x: 1, y: 2 } would be a compile error (excess property y).
// If dynamic ArkTS allows this, it documents that excess property checking is not strict.
function main(): void {
  let obj: Exact = { x: 1 }
  assertTrue(obj.x === 1, 'exact property match')
  // Excess property boundary documented - if y is added, does it compile?
}

main()
