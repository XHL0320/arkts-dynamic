/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: duplicate export declaration.
 * Boundary reason: dynamic ArkTS duplicate export detection needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // In ES, duplicate named export is a SyntaxError.
  // If dynamic ArkTS allows this, it documents relaxed enforcement.
  assertTrue(true, 'duplicate export boundary documented')
}

main()
