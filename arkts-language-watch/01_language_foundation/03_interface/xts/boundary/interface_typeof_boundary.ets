/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: typeof on interface name.
 * Boundary reason: interface is typically erased at runtime; typeof should not return a meaningful value.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface TypeofTest {
  prop: string
}

function main(): void {
  // In TypeScript, `typeof TypeofTest` is a compile error (interface has no runtime value).
  // If dynamic ArkTS allows it, the result would be undefined or "undefined".
  // This boundary documents the behavior.
  let obj: TypeofTest = { prop: "test" }
  assertTrue(typeof obj === "object", 'typeof object annotated with interface')
  // typeof TypeofTest would be tested here if allowed
}

main()
