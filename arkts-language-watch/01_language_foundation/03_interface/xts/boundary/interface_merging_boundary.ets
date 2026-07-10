/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: interface merging (same name interface declarations).
 * Boundary reason: dynamic ArkTS interface merging support needs confirmation.
 * In TypeScript, same-name interfaces are merged automatically.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Merged {
  a: number
}

interface Merged {
  b: string
}

// In TypeScript, Merged now has both { a: number; b: string }
// If dynamic ArkTS supports merging, this should compile.
// If not, the second declaration would be a duplicate error.
function main(): void {
  let obj: Merged = { a: 1, b: "hello" }
  assertTrue(obj.a === 1, 'merged property a')
  assertTrue(obj.b === "hello", 'merged property b')
}

main()
