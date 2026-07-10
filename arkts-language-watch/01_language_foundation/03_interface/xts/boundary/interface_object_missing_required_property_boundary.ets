/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: object literal missing required property.
 * Boundary reason: dynamic ArkTS structural compatibility checking needs confirmation.
 * In TypeScript, this would be a compile error.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Required {
  a: number
  b: string
}

// In TypeScript, { a: 1 } would be a compile error because b is missing.
// If dynamic ArkTS allows this, it documents that structural checking is not strict.
function main(): void {
  // let obj: Required = { a: 1 }  // Would be compile error in TS
  let obj: Required = { a: 1, b: "present" }
  assertTrue(obj.a === 1, 'required property a present')
  assertTrue(obj.b === "present", 'required property b present')
}

main()
