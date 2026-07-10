/*
 * Operator Stage 1
 * Boundary / pending confirmation.
 * Test point: delete non-configurable property.
 * Expected in ES: delete returns false in non-strict mode, throws TypeError in strict mode.
 * Boundary reason: dynamic ArkTS strict mode behavior and Object.defineProperty support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = { x: 1 }
  // Attempt to make a non-configurable property
  // Note: Object.defineProperty support in dynamic ArkTS is pending confirmation.
  // If defineProperty is supported, delete should return false or throw.
  // If not supported, this test documents the boundary.
  let result: boolean = delete obj.x
  assertTrue(result === true, 'delete configurable property returns true')
  // Non-configurable boundary: documented for future confirmation
}

main()
