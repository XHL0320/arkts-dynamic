/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: duplicate property in same interface.
 * Boundary reason: dynamic ArkTS duplicate property detection needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// In TypeScript, duplicate property with same type is allowed (merging).
// Duplicate with different types is a compile error.
// Dynamic ArkTS behavior needs confirmation.
interface DupInterface {
  prop: string
  prop: string  // Same type duplicate - TS allows this
}

function main(): void {
  let obj: DupInterface = { prop: "value" }
  assertTrue(obj.prop === "value", 'duplicate same-type property compiles')
}

main()
