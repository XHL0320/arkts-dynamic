/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: interface extends with conflicting property types.
 * Boundary reason: dynamic ArkTS conflict detection in multiple extends needs confirmation.
 * In TypeScript, this would be a compile error (conflicting property types).
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface X {
  val: string
}

interface Y {
  val: number
}

// In TypeScript, interface Z extends X, Y would be a compile error
// because val has conflicting types (string vs number).
// Dynamic ArkTS behavior needs confirmation.
// If this compiles, it documents that conflict detection is not enforced.
interface Z extends X, Y {
  extra: boolean
}

function main(): void {
  // This boundary file documents conflict detection behavior.
  assertTrue(true, 'extends conflict boundary documented')
}

main()
