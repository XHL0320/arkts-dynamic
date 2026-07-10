/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: class field initialized to null.
 * Boundary reason: dynamic ArkTS class field null initialization needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class NullableField {
  data: string | null = null
  constructor() {}
}

function main(): void {
  let obj: NullableField = new NullableField()
  assertTrue(obj.data === null, 'class field initialized to null')
  obj.data = "set"
  assertTrue(obj.data === "set", 'class field can be set from null')
}

main()
